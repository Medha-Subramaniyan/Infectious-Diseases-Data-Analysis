SELECT tb.yearagegrp.Year,
tb.raceyear.Total_Cases,
tb.raceyear.Hispanic_Latino,
tb.raceyear.American_Indian_Alaska_Native,
tb.raceyear.Asian,
tb.raceyear.Black_AA,
tb.raceyear.Native_Hawaiian_PI_Cases,
tb.raceyear.White_Cases,
tb.yearagegrp.`0-4`,
tb.yearagegrp.`5-14`,
tb.yearagegrp.`25-44`,
tb.yearagegrp.`45-64`,
tb.yearagegrp.`65+`
FROM tb.raceyear
LEFT JOIN tb.yearagegrp
ON tb.raceyear.Year = tb.yearagegrp.Year;