// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

use databend_driver::Client;
use databend_driver::Error;
use databend_driver::RowIterator;
use rocket::fs::relative;
use rocket::fs::FileServer;
use rocket::fs::Options;
use rocket::futures::StreamExt;
use rocket::get;
use rocket::launch;
use rocket::routes;
use rocket::serde::json::Json;
use std::str::FromStr;

async fn read_poi_values(row_iter: Result<RowIterator, Error>) -> serde_json::Value {
    let mut pois = vec![];
    if let Ok(mut rows) = row_iter {
        while let Some(row) = rows.next().await {
            if let Ok(row) = row {
                let osm_id = i64::try_from(row.values().first().unwrap().clone()).unwrap();
                let code = i64::try_from(row.values().get(1).unwrap().clone()).unwrap();
                let fclass = String::try_from(row.values().get(2).unwrap().clone()).unwrap();
                let name = String::try_from(row.values().get(3).unwrap().clone()).unwrap();

                let geo_str = String::try_from(row.values().get(4).unwrap().clone()).unwrap();
                let geo = serde_json::Value::from_str(&geo_str).unwrap();
                let geo = geo.as_object().unwrap().clone();

                let mut points = Vec::new();
                let coords = geo
                    .get("coordinates")
                    .unwrap()
                    .as_array()
                    .unwrap()
                    .first()
                    .unwrap()
                    .as_array()
                    .unwrap();
                for coord in coords {
                    let point = vec![coord.get(1).unwrap().clone(), coord.get(0).unwrap().clone()];
                    points.push(serde_json::Value::Array(point));
                }

                let mut geo_map = serde_json::Map::new();
                geo_map.insert("osm_id".to_string(), osm_id.into());
                geo_map.insert("code".to_string(), code.into());
                geo_map.insert("fclass".to_string(), fclass.into());
                geo_map.insert("name".to_string(), name.into());
                geo_map.insert("geom".to_string(), points.into());
                let poi = serde_json::Value::Object(geo_map);
                pois.push(poi);
            }
        }
    }
    pois.into()
}

#[get("/show?<fclass>")]
async fn show_api(fclass: Option<String>) -> Json<serde_json::Value> {
    let dsn = "databend://root:@127.0.0.1:8000/default?sslmode=disable".to_string();

    let client = Client::new(dsn);
    let conn = client.get_conn().await.unwrap();

    //let sql = "select * from poi where osm_id = 1021568339";
    let sql = if let Some(fclass) = fclass {
        format!("select * from poi where fclass='{}'", fclass)
    } else {
        "select * from poi".to_string()
    };
    let row_iter = conn.query_iter(&sql).await;
    let pois = read_poi_values(row_iter).await;

    Json(pois)
}

//   http://127.0.0.1:7000/api/distance?sx=1.0&sy=1.0&ex=1.0&ey=1.0
#[get("/distance?<sx>&<sy>&<ex>&<ey>")]
async fn distance_api(
    sx: Option<f64>,
    sy: Option<f64>,
    ex: Option<f64>,
    ey: Option<f64>,
) -> Json<serde_json::Value> {
    let dsn = "databend://root:@127.0.0.1:8000/default?sslmode=disable".to_string();

    let client = Client::new(dsn);
    let conn = client.get_conn().await.unwrap();

    let sx = sx.unwrap();
    let sy = sy.unwrap();
    let ex = ex.unwrap();
    let ey = ey.unwrap();

    // convert srid from 4326 to 3857
    let sql = format!(
        "select st_distance(st_transform(st_makegeompoint({}, {}), 4326, 3857), st_transform(st_makegeompoint({}, {}), 4326, 3857))",
        sx, sy, ex, ey
    );
    let values = conn.query_iter(&sql).await;

    let mut distance = 0_f64;
    if let Ok(mut rows) = values {
        while let Some(row) = rows.next().await {
            if let Ok(row) = row {
                // unit transform from meter to kilometer.
                distance = f64::try_from(row.values().first().unwrap().clone()).unwrap() / 1000_f64;
            }
        }
    }

    Json(distance.into())
}

//   http://127.0.0.1:7000/api/nearby?sx=1.0&sy=1.0
#[get("/nearby?<sx>&<sy>")]
async fn nearby_api(sx: Option<f64>, sy: Option<f64>) -> Json<serde_json::Value> {
    let dsn = "databend://root:@127.0.0.1:8000/default?sslmode=disable".to_string();

    let client = Client::new(dsn);
    let conn = client.get_conn().await.unwrap();

    let sx = sx.unwrap();
    let sy = sy.unwrap();

    // convert srid from 4326 to 3857
    // distance less than 5km museums.
    let sql = format!(
        "select * from poi where fclass='museum' and st_distance(st_transform(st_makegeompoint({}, {}), 4326, 3857), st_transform(geo, 4326, 3857)) < 5000",
        sx, sy
    );
    let row_iter = conn.query_iter(&sql).await;
    let pois = read_poi_values(row_iter).await;

    Json(pois)
}

#[launch]
fn rocket() -> _ {
    rocket::build()
        .configure(rocket::Config::figment().merge(("port", 7001)))
        .mount("/", FileServer::new(relative!("static"), Options::Index))
        .mount("/api", routes![show_api, distance_api, nearby_api])
}
