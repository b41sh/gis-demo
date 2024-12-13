CREATE TABLE poi (
  osm_id BIGINT NULL,
  code BIGINT NULL,
  fclass VARCHAR NULL,
  name VARCHAR NULL,
  geo GEOMETRY NULL
) ENGINE=FUSE;

INSERT INTO TABLE poi VALUES
(24824550, 7202, 'park', '天坛公园', 'POLYGON((116.3942484 39.8822058, 116.3942646 39.8824955, 116.3942749 39.8827045, 116.3942928 39.882913, 116.3943415 39.8831328, 116.3944076 39.8833898, 116.3944679 39.8836247, 116.394531 39.8838047, 116.3946204 39.8840161, 116.3947017 39.8842026, 116.3948079 39.8843706, 116.3949449 39.8845963, 116.395187 39.8849485, 116.395469 39.8852431, 116.3969174 39.8853408, 116.396941 39.8853984, 116.3968943 39.8859864, 116.397199 39.8860848, 116.3980129 39.8862803, 116.3987283 39.8864124, 116.3994288 39.8865053, 116.3998477 39.886547, 116.400297 39.886571, 116.4011759 39.8866046, 116.4022119 39.8866373, 116.4060558 39.8867319, 116.4060828 39.886733, 116.4063519 39.8867431, 116.4065458 39.8867503, 116.406676 39.8867552, 116.4086483 39.8868246, 116.4090701 39.8868254, 116.4095082 39.8867942, 116.409862 39.886755, 116.4102185 39.8866984, 116.4106394 39.886573, 116.4112022 39.8864048, 116.4116808 39.8862116, 116.4120415 39.8860111, 116.4123848 39.8857815, 116.4126495 39.8855324, 116.4128582 39.8853175, 116.4130556 39.8850993, 116.4132553 39.8848339, 116.4133926 39.8846357, 116.4135701 39.884347, 116.4136915 39.8841217, 116.4137897 39.8838838, 116.4139015 39.8835458, 116.4139765 39.8832573, 116.4140356 39.882979, 116.4141076 39.882727, 116.4141284 39.882656, 116.4141963 39.8823241, 116.4142112 39.8822059, 116.4142197 39.8821377, 116.4134659 39.8821175, 116.4134663 39.8820717, 116.4135035 39.8812594, 116.4135088 39.8811265, 116.4129015 39.8811195, 116.4128932 39.8813022, 116.4117177 39.8812677, 116.4114342 39.8812629, 116.4114561 39.8809367, 116.4114673 39.8802469, 116.4114736 39.8800392, 116.4115235 39.8790916, 116.4115623 39.8782922, 116.4116347 39.8770956, 116.4118612 39.8739288, 116.4118726 39.87371, 116.4118905 39.8733686, 116.4072918 39.8732194, 116.4072278 39.8732179, 116.4069766 39.8732127, 116.4069327 39.8732116, 116.4000521 39.872967, 116.3996877 39.8729437, 116.399668 39.8733306, 116.3996578 39.8735309, 116.3996616 39.8738822, 116.3996254 39.8743217, 116.3995785 39.875142, 116.3995016 39.8767131, 116.3994693 39.8771146, 116.3966403 39.877023, 116.396592 39.8776775, 116.3994076 39.8777704, 116.3993356 39.8792314, 116.3943482 39.8791817, 116.3943432 39.8794243, 116.3943915 39.8794715, 116.39439 39.8795124, 116.3943821 39.8797286, 116.394381 39.8797591, 116.3942484 39.8822058))'),
(24825400, 7202, 'park', '地坛公园', 'POLYGON((116.4061616 39.9540879, 116.4079279 39.9542283, 116.4077696 39.9554506, 116.4091328 39.95554, 116.4092535 39.9554223, 116.4093272 39.9554365, 116.4094146 39.9554387, 116.4094421 39.9555244, 116.4099662 39.9555657, 116.4100841 39.9543996, 116.4114 39.9545042, 116.411915 39.9504511, 116.4100204 39.9502833, 116.4066208 39.9499822, 116.4063763 39.9521489, 116.4061616 39.9540879))'),
(1021568339, 7202, 'park', '冬奥公园', 'POLYGON((116.18468 39.8866918, 116.1849122 39.8867143, 116.1860742 39.8867973, 116.1880735 39.8865426, 116.1897263 39.8860608, 116.1923823 39.8848978, 116.1946702 39.8838566, 116.1974057 39.8826049, 116.1991162 39.8817354, 116.2017217 39.8795199, 116.2016568 39.8789605, 116.2015656 39.8778329, 116.2015656 39.8768538, 116.2016422 39.8756592, 116.2010604 39.8763563, 116.2008425 39.8762565, 116.1989688 39.8782251, 116.1976527 39.8790725, 116.1958794 39.8804419, 116.1944964 39.8813063, 116.1924108 39.88259, 116.1894332 39.8845355, 116.1858196 39.885448, 116.1852463 39.8858554, 116.18468 39.8866918))'),
(29228773, 7202, 'park', '颐和园', 'POLYGON((116.2547821 39.990963, 116.2555804 39.9922781, 116.2573193 39.9944408, 116.2576055 39.9943881, 116.2576875 39.9947785, 116.2588076 39.995875, 116.2597002 39.9967364, 116.2601637 39.997407, 116.2605156 39.9979133, 116.2607302 39.9989259, 116.2608332 39.9994979, 116.2610564 39.9998333, 116.2619833 40.0004447, 116.262789 40.0005398, 116.2635197 40.0006223, 116.2644209 40.0006223, 116.2651333 40.0008064, 116.2659916 40.000951, 116.2667298 40.0009905, 116.2679142 40.0010102, 116.26903 40.0011285, 116.2698623 40.0011293, 116.2741904 40.0005258, 116.2759256 40.0003334, 116.2761424 40.0003051, 116.2762752 40.0002844, 116.2764488 40.0001346, 116.2765549 40.0000251, 116.2765797 39.9999407, 116.2767508 39.9990037, 116.2770684 39.9973993, 116.2758026 39.9972672, 116.275823 39.9971599, 116.2757035 39.9971069, 116.2755611 39.996912, 116.2755965 39.9966755, 116.2756325 39.9964193, 116.2757301 39.9961775, 116.2760464 39.996171, 116.2760887 39.99592, 116.2757843 39.9958855, 116.2758014 39.9957121, 116.275561 39.9955817, 116.2754773 39.9942473, 116.2753281 39.9935871, 116.2744717 39.9898977, 116.2739395 39.9897727, 116.2735791 39.9892401, 116.2730727 39.9889113, 116.2726521 39.9885956, 116.2724547 39.9881024, 116.2720169 39.9861098, 116.2716736 39.9847288, 116.2714848 39.9842355, 116.2714419 39.9839922, 116.2715706 39.9837291, 116.2719569 39.9833148, 116.2725834 39.9826111, 116.273313 39.9816904, 116.2739052 39.9807038, 116.2746266 39.9793886, 116.2739692 39.9792274, 116.2737627 39.9793824, 116.2735758 39.9794631, 116.2731477 39.9795204, 116.2724613 39.9795673, 116.2717099 39.9796134, 116.2714877 39.9796021, 116.2712334 39.9795561, 116.270984 39.9795469, 116.2706608 39.9795726, 116.2702381 39.9796533, 116.2693047 39.9801119, 116.268249 39.9807301, 116.2678112 39.980717, 116.2674632 39.9807129, 116.2671539 39.9807508, 116.2666063 39.9809712, 116.2662258 39.9811893, 116.2651215 39.9811561, 116.2646915 39.9810708, 116.2644007 39.9810992, 116.2640418 39.981149, 116.2637263 39.9811822, 116.2634639 39.9813318, 116.2630474 39.981854, 116.2629342 39.9820288, 116.2627589 39.9821975, 116.2613824 39.9832696, 116.2611909 39.9832486, 116.2602993 39.9838381, 116.2596401 39.9842092, 116.2588823 39.9850695, 116.2587491 39.9853204, 116.2586375 39.9855305, 116.2583422 39.9856587, 116.258281 39.985709, 116.2582115 39.9859191, 116.2581639 39.9860901, 116.2582497 39.9863137, 116.2579579 39.9869253, 116.257563 39.9872212, 116.2566447 39.987596, 116.255958 39.9882405, 116.2553229 39.9890165, 116.2551223 39.9895642, 116.2549023 39.9902988, 116.2547986 39.9906032, 116.2547821 39.990963))'),
(268548508, 7202, 'park', '恭王府花园', 'POLYGON((116.3787872 39.9367754, 116.3793166 39.9368298, 116.3794414 39.9372617, 116.3805915 39.9373631, 116.3808843 39.9362578, 116.380791 39.9361043, 116.3790337 39.9359198, 116.3789279 39.9363418, 116.3787872 39.9367754))'),
(24827108, 7202, 'park', '圆明园遗址公园', 'POLYGON((116.2816412 40.0119641, 116.2927305 40.0128648, 116.3026697 40.0136207, 116.3029443 40.0123257, 116.305588 40.0125533, 116.3055596 40.0128018, 116.3069396 40.0129242, 116.3069928 40.0126852, 116.3117248 40.0130817, 116.3119459 40.0113507, 116.3126654 40.0057173, 116.3125324 40.0054812, 116.3122727 40.0053566, 116.3119417 40.0052781, 116.3068925 40.005127, 116.3077486 40.0026003, 116.3084997 40.0003834, 116.3087637 39.9996042, 116.3087442 39.9987711, 116.3074173 39.9987075, 116.3072869 39.9992264, 116.3070555 39.9991851, 116.3069887 39.9993967, 116.3068058 39.9993613, 116.3067896 39.9993994, 116.306561 39.999353, 116.3064403 39.9993288, 116.3063207 39.9993029, 116.306091 39.9992529, 116.3061055 39.9992015, 116.305928 39.999164, 116.3059801 39.9989825, 116.3058175 39.9989487, 116.3058422 39.9988827, 116.3057219 39.9988566, 116.3041355 39.99862, 116.3040742 39.9985465, 116.3038605 39.9986275, 116.3034946 39.9985825, 116.3031193 39.9985363, 116.3025893 39.9982956, 116.3018222 39.997746, 116.301051 39.9970006, 116.300757 39.9968245, 116.3003763 39.9966817, 116.2982846 39.9965414, 116.2981573 39.9966778, 116.2980475 39.9968489, 116.297957 39.9969893, 116.2978668 39.9980408, 116.297815 39.9985866, 116.2980001 39.9985902, 116.2979814 39.9991518, 116.2989183 39.999236, 116.2991604 39.9994591, 116.2995328 39.999504, 116.2999689 39.9998477, 116.3000409 39.9998918, 116.3000912 39.9999304, 116.3001243 39.9999862, 116.3001965 40.0001078, 116.3002511 40.00024, 116.3002899 40.0003011, 116.3003375 40.0003454, 116.300406 40.000395, 116.3004667 40.0004238, 116.3005058 40.0004512, 116.3005648 40.0005313, 116.300287 40.002892, 116.3008438 40.0029376, 116.3008159 40.0031381, 116.300805 40.0032561, 116.3006792 40.0037877, 116.3004426 40.0037653, 116.3002895 40.0046954, 116.2994102 40.0046105, 116.2993369 40.0045954, 116.2983991 40.0045143, 116.2979458 40.0044741, 116.2975085 40.0044359, 116.2973126 40.0044206, 116.2952371 40.0042064, 116.2953103 40.0036605, 116.2953259 40.0033649, 116.2954128 40.0028976, 116.2955617 40.0023402, 116.2956225 40.0019471, 116.2954415 40.0019157, 116.2954593 40.0018401, 116.2946789 40.0017447, 116.2946512 40.0018522, 116.2862491 40.0011141, 116.2832936 40.0008545, 116.2816412 40.0119641))'),
(29222903, 7202, 'park', '玉渊潭公园', 'POLYGON((116.3045761 39.9138475, 116.3045761 39.9183042, 116.3045996 39.9201053, 116.3053853 39.9201061, 116.3054156 39.9186003, 116.3062562 39.9186027, 116.3063533 39.9190332, 116.3064352 39.9190332, 116.3067417 39.919231, 116.3073547 39.9193777, 116.307969 39.9193357, 116.3079369 39.9188463, 116.3102409 39.9187321, 116.3102409 39.9192061, 116.3133167 39.918654, 116.3132736 39.9184588, 116.3165495 39.9180738, 116.3195702 39.9180798, 116.3206377 39.9183144, 116.3212464 39.9176201, 116.3229301 39.9177125, 116.3230137 39.9166589, 116.3234827 39.9160834, 116.3234944 39.9155349, 116.3237166 39.9145827, 116.3238464 39.914173, 116.3242319 39.9136286, 116.3243166 39.913418, 116.3245153 39.913258, 116.325402 39.9127922, 116.3256065 39.9127994, 116.3266634 39.9120946, 116.3281312 39.912084, 116.3281113 39.9117351, 116.326626 39.9117464, 116.3250991 39.9127781, 116.3236915 39.9132319, 116.3199398 39.9133866, 116.3185407 39.9132155, 116.3170312 39.9121214, 116.3167972 39.9120015, 116.3164275 39.911965, 116.3157341 39.9121358, 116.3147174 39.9120057, 116.3145253 39.9120154, 116.3136976 39.9121083, 116.3134263 39.9117905, 116.3130036 39.9115208, 116.3126022 39.9114521, 116.311273 39.911681, 116.3106825 39.9116294, 116.3094999 39.9119357, 116.3091083 39.9122433, 116.3053172 39.9129769, 116.3048897 39.9137106, 116.3045761 39.9138475))'),
(30725406, 7202, 'park', '紫竹院公园', 'POLYGON((116.3074902 39.9415455, 116.3075906 39.9421619, 116.3076081 39.9422694, 116.3077819 39.9422628, 116.3077788 39.9420708, 116.3089171 39.9420147, 116.3092391 39.9423615, 116.3097461 39.9424671, 116.3100244 39.942518, 116.3109663 39.94293, 116.311162 39.9433615, 116.3112409 39.9435355, 116.3119942 39.9435801, 116.3119439 39.9444274, 116.3121874 39.9444469, 116.314641 39.9446437, 116.3147256 39.9441565, 116.3154176 39.9442173, 116.316056 39.9407716, 116.3161391 39.9402491, 116.3172795 39.9401536, 116.3184318 39.9403126, 116.3184635 39.9401972, 116.3188063 39.9402479, 116.3189167 39.9392646, 116.3185083 39.9392433, 116.3185145 39.9391204, 116.3185327 39.9389625, 116.3188828 39.9389765, 116.3190149 39.9380891, 116.318901 39.9379826, 116.314181 39.9382596, 116.3126324 39.9384097, 116.3117597 39.938544, 116.3101374 39.939036, 116.3092579 39.9393915, 116.3087194 39.9396092, 116.3086004 39.9398071, 116.30854 39.9402544, 116.3085436 39.9408773, 116.3086041 39.9415346, 116.3074902 39.9415455))'),
(33616744, 7202, 'park', '奥林匹克森林公园', 'POLYGON((116.3672444 40.0284003, 116.3695756 40.0287827, 116.370262 40.0289113, 116.3706128 40.0289754, 116.3736602 40.029477, 116.3743458 40.0295904, 116.3747139 40.0296513, 116.3757106 40.0297213, 116.3757655 40.0297213, 116.3763167 40.0297212, 116.3774219 40.0298228, 116.378123 40.02978, 116.3790792 40.029845, 116.3800891 40.0299875, 116.3829625 40.030089, 116.3830426 40.0297641, 116.3831937 40.0297587, 116.3833096 40.0297723, 116.3833251 40.0298127, 116.3843304 40.0299019, 116.3856557 40.0300253, 116.3867777 40.0301771, 116.387485 40.0303736, 116.3881606 40.0305587, 116.3893499 40.0308914, 116.3903351 40.0312286, 116.3906894 40.0313728, 116.3910537 40.0316116, 116.3920069 40.032427, 116.3921941 40.0324888, 116.3922218 40.0324374, 116.3930406 40.0325693, 116.3930679 40.0328586, 116.3933377 40.0332694, 116.3934452 40.0328446, 116.394518 40.031044, 116.3950679 40.0313161, 116.3998514 40.0312636, 116.4005193 40.0312562, 116.4037802 40.0312204, 116.4025471 40.023854, 116.4024367 40.0224981, 116.4021908 40.0214181, 116.4020401 40.0213211, 116.396909 40.0213581, 116.3963324 40.0214403, 116.3962895 40.021545, 116.3951576 40.0215265, 116.3939452 40.0215635, 116.3930225 40.0214937, 116.3919067 40.0214772, 116.3860702 40.0215553, 116.3860273 40.0212081, 116.3860434 40.020861, 116.3918585 40.020783, 116.3934678 40.0205858, 116.395002 40.0205611, 116.3954151 40.0204749, 116.3961178 40.0204625, 116.3961285 40.0206638, 116.3965496 40.0207727, 116.4018416 40.0206679, 116.402081 40.0204942, 116.4016951 40.0189172, 116.401596 40.0184539, 116.4015459 40.0177311, 116.4014963 40.015802, 116.4013521 40.0101965, 116.4014728 40.0091201, 116.4014264 40.0082456, 116.4003737 40.0082901, 116.3942839 40.0085474, 116.3941458 40.008549, 116.3935515 40.008556, 116.3806123 40.0087083, 116.3798532 40.0087903, 116.3788344 40.0087787, 116.3748733 40.0087606, 116.3692249 40.0087512, 116.3690645 40.0098379, 116.3689942 40.0108644, 116.3689524 40.0133165, 116.3690412 40.0134184, 116.3726124 40.0134529, 116.3729948 40.0134924, 116.3741747 40.0139057, 116.3748865 40.014202, 116.3744509 40.0146575, 116.3741451 40.0152778, 116.3739887 40.0158288, 116.3739842 40.0163214, 116.374113 40.0167692, 116.3743275 40.0172417, 116.3745306 40.0175113, 116.375121 40.0180585, 116.3756418 40.0184084, 116.3762426 40.0186796, 116.3768113 40.0188357, 116.3768152 40.0193122, 116.3768156 40.0193595, 116.3768059 40.0203023, 116.3757759 40.0204954, 116.3756445 40.0205118, 116.3756266 40.0206407, 116.3756204 40.0209802, 116.3758135 40.0210007, 116.3761514 40.0209678, 116.3774367 40.0205334, 116.3775226 40.0206237, 116.3774421 40.021134, 116.3852662 40.0208936, 116.3853031 40.0212246, 116.385287 40.0215635, 116.3818002 40.0216416, 116.3814193 40.0216703, 116.3810457 40.0218284, 116.3808504 40.021997, 116.3805897 40.0222967, 116.3803001 40.0226911, 116.3799889 40.0229745, 116.3792808 40.0233525, 116.3788892 40.0234675, 116.378444 40.0234921, 116.3777198 40.0234018, 116.3772745 40.0231676, 116.3769667 40.0228913, 116.3763992 40.0223661, 116.376005 40.0221241, 116.3750805 40.0217627, 116.3747013 40.0217227, 116.3742444 40.0217224, 116.3734551 40.0217175, 116.3685519 40.0218053, 116.3684286 40.0218739, 116.3684103 40.0223882, 116.3685589 40.0224473, 116.3691801 40.0224496, 116.3695267 40.0226749, 116.3687386 40.0232911, 116.3686949 40.0239071, 116.3691367 40.0239081, 116.3692641 40.0239084, 116.369278 40.0242329, 116.3703423 40.0245644, 116.369491 40.0272032, 116.3678441 40.0269239, 116.3672444 40.0284003))'),
(232724487, 7202, 'park', '元大都城垣遗址公园', 'POLYGON((116.3882918 39.9748261, 116.3883402 39.9750341, 116.388827 39.9752581, 116.3915173 39.9752663, 116.3918281 39.9752729, 116.3952132 39.9753006, 116.3952478 39.9751691, 116.3952821 39.9738737, 116.3921488 39.9738633, 116.3898273 39.9738932, 116.3890463 39.9739483, 116.388346 39.9740168, 116.3882918 39.9748261))'),
(8769598, 7202, 'park', '园博园', 'POLYGON((116.1579678 39.8849579, 116.1638257 39.8885705, 116.167731 39.8860068, 116.1693908 39.8851078, 116.1713651 39.8844002, 116.1726018 39.8836594, 116.1763769 39.8822692, 116.1779824 39.8817031, 116.1807487 39.8816199, 116.1840248 39.8817115, 116.1856737 39.8819779, 116.1877239 39.8825356, 116.1898068 39.8828686, 116.1913146 39.8826272, 116.1924108 39.88259, 116.1944964 39.8813063, 116.1958794 39.8804419, 116.1976527 39.8790725, 116.1989688 39.8782251, 116.2008425 39.8762565, 116.2014559 39.8750154, 116.2020216 39.8725873, 116.2026942 39.8706557, 116.2035078 39.8694318, 116.2051133 39.8671338, 116.2069467 39.864461, 116.2072938 39.8638116, 116.207083 39.8634971, 116.2019814 39.8611924, 116.2015293 39.8610271, 116.2006603 39.8607077, 116.199539 39.8604654, 116.1988539 39.860408, 116.1984037 39.8603996, 116.1973863 39.8603946, 116.1971314 39.8606098, 116.1967162 39.8606689, 116.1953053 39.8630878, 116.1949259 39.8635, 116.1944597 39.8639454, 116.1937894 39.8642775, 116.1912904 39.865065, 116.1903987 39.8654642, 116.1895442 39.8661059, 116.1880835 39.8677834, 116.1864435 39.8698542, 116.1854807 39.8709785, 116.1849166 39.8714579, 116.1836345 39.8722373, 116.1729332 39.8783975, 116.1713763 39.8764709, 116.1690728 39.876143, 116.1682926 39.8758293, 116.167178 39.875088, 116.1645959 39.8747744, 116.1637785 39.8741613, 116.1623853 39.8757438, 116.159896 39.8769841, 116.1592644 39.8774831, 116.1594513 39.882435, 116.1594347 39.8827112, 116.1594009 39.882994, 116.1593301 39.8832261, 116.1592314 39.8835098, 116.1591235 39.8837586, 116.1590095 39.8839423, 116.1588354 39.8841326, 116.1579678 39.8849579))'),
(635574817, 1500, 'museum', '中国消防博物馆', 'POLYGON((116.345854 39.8705652, 116.3464587 39.8705812, 116.3465102 39.8694308, 116.3459055 39.8694148, 116.345854 39.8705652))'),
(637237606, 1500, 'museum', '中国海关博物馆', 'POLYGON((116.4265836 39.9058239, 116.426764 39.9058261, 116.4267628 39.9058867, 116.4269386 39.9058888, 116.4269368 39.905976, 116.4271468 39.9059785, 116.4271497 39.9058387, 116.4269102 39.9058359, 116.4269116 39.9057704, 116.4267639 39.9057686, 116.4267655 39.9056913, 116.4265864 39.9056891, 116.4265836 39.9058239))'),
(8607825, 1500, 'museum', '中国国家博物馆', 'POLYGON((116.3942074 39.90517, 116.3960492 39.9052168, 116.3960631 39.9048962, 116.3965722 39.9049092, 116.3966103 39.9040282, 116.3964959 39.9040253, 116.3965202 39.9034634, 116.3966419 39.9034665, 116.39668 39.9025859, 116.396158 39.9025726, 116.3961718 39.9022526, 116.3943356 39.9022059, 116.3942921 39.9031681, 116.3942913 39.9031936, 116.3942565 39.9041551, 116.3942074 39.90517))'),
(646141227, 1500, 'museum', '中国园林博物馆', 'POLYGON((116.1696415 39.8772944, 116.1708695 39.8790014, 116.172129 39.8784565, 116.170809 39.8766852, 116.1696415 39.8772944))'),
(963097, 1500, 'museum', '中国人民革命军事博物馆', 'POLYGON((116.3166555 39.9074548, 116.3166724 39.9088616, 116.3179473 39.9088526, 116.3192255 39.9088436, 116.3192086 39.9074361, 116.3189158 39.9074382, 116.3189182 39.9076362, 116.3179316 39.9076431, 116.3169977 39.9076497, 116.3169953 39.9074524, 116.3166555 39.9074548))'),
(136998797, 1500, 'museum', '首都博物馆', 'POLYGON((116.3348822 39.9046212, 116.3348888 39.905427, 116.3368649 39.9054175, 116.3368583 39.9046117, 116.3348822 39.9046212))'),
(161296938, 1500, 'museum', '国家动物博物馆', 'POLYGON((116.3747514 40.0013687, 116.375617 40.0013793, 116.3756248 40.0010017, 116.3747592 40.0009912, 116.3747514 40.0013687))'),
(176441270, 1500, 'museum', '北京汽车博物馆', 'POLYGON((116.2956547 39.8274868, 116.2956586 39.8275841, 116.2956728 39.8276486, 116.2957065 39.827742, 116.295784 39.8278472, 116.2958577 39.8279425, 116.29589 39.8280497, 116.2958874 39.8281947, 116.2958823 39.8284231, 116.2960219 39.8284241, 116.2960943 39.8282543, 116.2961745 39.8281351, 116.2963037 39.8280358, 116.2964201 39.8279564, 116.2965507 39.8278542, 116.2966244 39.8277757, 116.29668 39.8276774, 116.2966968 39.8275652, 116.29668 39.827456, 116.2966308 39.8273478, 116.2965558 39.8272515, 116.2964266 39.8271383, 116.2962999 39.8270331, 116.2961473 39.8269209, 116.2960452 39.8268017, 116.295965 39.8266389, 116.295806 39.8266389, 116.2958797 39.8268514, 116.2958952 39.8269546, 116.2958939 39.827041, 116.29585 39.8271592, 116.2957672 39.8272733, 116.2956845 39.8273756, 116.2956547 39.8274868))'),
(363347726, 1500, 'museum', '中国印刷博物馆', 'POLYGON((116.3247841 39.7420808, 116.3250629 39.7420793, 116.3250649 39.7421142, 116.3254643 39.7421127, 116.3254682 39.742099, 116.3256047 39.742099, 116.3256066 39.7420489, 116.325753 39.7420458, 116.325753 39.7418801, 116.3254821 39.741687, 116.3252899 39.7416939, 116.3252839 39.7417798, 116.3250807 39.7417783, 116.3250827 39.7417418, 116.325059 39.7417175, 116.3248118 39.741719, 116.3247901 39.7417372, 116.3247841 39.7420808))'),
(925188503, 1500, 'museum', '中国铁道博物馆正阳门展馆', 'POLYGON((116.3938221 39.898653, 116.3944695 39.8986778, 116.3944829 39.8982704, 116.3938296 39.8982536, 116.3938221 39.898653))'),
(966214641, 1500, 'museum', '北京税务博物馆', 'POLYGON((116.4398516 39.9812058, 116.4402808 39.9813932, 116.440431 39.9812255, 116.440019 39.9810249, 116.4398516 39.9812058))'),
(1016302761, 1500, 'museum', '中国地质博物馆', 'POLYGON((116.3658099 39.9220252, 116.3658115 39.9221849, 116.3664084 39.9221815, 116.3664021 39.921539, 116.3661706 39.9215404, 116.3661725 39.9217265, 116.3661754 39.922023, 116.3658099 39.9220252))'),
(1125741563, 1500, 'museum', '中国电信博物馆', 'POLYGON((116.3484721 39.9773798, 116.3490196 39.9773808, 116.349021 39.9769416, 116.3484735 39.9769406, 116.3484721 39.9773798))');
