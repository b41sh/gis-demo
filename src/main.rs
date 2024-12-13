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
use rocket::fs::relative;
use rocket::fs::FileServer;
use rocket::fs::Options;
use rocket::futures::StreamExt;
use rocket::get;
use rocket::launch;
use rocket::routes;
use rocket::serde::json::Json;
use std::str::FromStr;

#[get("/show")]
async fn show_api() -> Json<Vec<serde_json::Value>> {
    let dsn = "databend://root:@127.0.0.1:8000/default?sslmode=disable".to_string();

    let client = Client::new(dsn);
    let conn = client.get_conn().await.unwrap();

    let sql = "select * from poi";
    let values = conn.query_iter(sql).await;

    let mut pois = vec![];
    if let Ok(mut rows) = values {
        while let Some(row) = rows.next().await {
            if let Ok(row) = row {
                let osm_id = i64::try_from(row.values().first().unwrap().clone()).unwrap();
                let code = i64::try_from(row.values().get(1).unwrap().clone()).unwrap();
                let fclass = String::try_from(row.values().get(2).unwrap().clone()).unwrap();
                let name = String::try_from(row.values().get(3).unwrap().clone()).unwrap();

                let geo = String::try_from(row.values().get(4).unwrap().clone()).unwrap();
                let geo_value = serde_json::Value::from_str(&geo).unwrap();

                let mut properties = serde_json::Map::new();
                properties.insert("osm_id".to_string(), osm_id.into());
                properties.insert("code".to_string(), code.into());
                properties.insert("fclass".to_string(), fclass.into());
                properties.insert("name".to_string(), name.into());
                let mut geo_map = serde_json::Map::new();
                geo_map.insert("type".to_string(), "Feature".into());
                geo_map.insert("geometry".to_string(), geo_value);
                geo_map.insert("properties".to_string(), properties.into());

                let poi = serde_json::Value::Object(geo_map);
                pois.push(poi);
            }
        }
    }
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

#[launch]
fn rocket() -> _ {
    rocket::build()
        .configure(rocket::Config::figment().merge(("port", 7001)))
        .mount("/", FileServer::new(relative!("static"), Options::Index))
        .mount("/api", routes![show_api, distance_api])
}
