//
//  DataSourceOfCountriesByContinent.swift
//  BSCountryKit
//
//  Created by Blazej SLEBODA on 04/02/2020.
//

import Foundation

let dataSourceOfCountriesByContinent = [
    "europe":["AM","AZ","CY","GE","KZ","RU","TR","AX","AL","AD","AT","BY","BE","BA","BG","HR","CZ","DK","EE","FO","FI","FR","DE","GI","GR","GG","HU","IS","IE","IM","IT","JE","LV","LI","LT","LU","MK","MT","MD","MC","ME","NL","NO","PL","PT","RO","SM","RS","SK","SI","ES","SJ","SE","CH","UA","GB","VA"],
    "asia":["AM","AZ","CY","GE","KZ","RU","TR","AF","BH","BD","BT","IO","BN","KH","TD","CN","CX","CC","TL","HK","IN","ID", "IR","IQ","IL","JP","JO","KW","KG","LA","LB","MO","MY", "MV", "MN", "MM", "NP", "KP", "OM", "PK","PS","PH","QA","SA", "SG", "KR", "LK", "SY", "TW", "TJ", "TH","TM", "AE","UZ","VN","YE"],
    "africa":["DZ","AO","BJ","BW","BF","BI","CM","CV","CF","KM","CG","CD","DJ","EG","GQ","ER","ET","GA","GM","GH","GN","GW","CI","KE","LS","LR","LY","MG","MW","ML","MR","MU","YT","MA","MZ","NA","NE","NG","RE","RW","SH","ST","SN","SC","SL","SO","ZA","SD","SZ","TZ","TG","TN","UG","EH","ZM","ZW"],
    "oceania":["UM","AS","AU","CK","FJ","PF","GU","KI","MH","FM","NR","NC","NZ","NU","NF","MP","PW","PG","PN","WS","SB","TK","TO","TV","VU","WF"],
    "northAmerica":["UM","AI","AG","AW","BS","BB","BZ","BM","VG","CA","KY","CR","CU","DM","DO","SV","GL","GD","GP","GT","HT","HN","JM","MQ","MX","MS","AN","NI","PA","PR","BL","KN","LC","MF","PM","VC","TT","TC","VI","US"],
    
        "southAmerica":["AR","BO","BR","CL","CO","EC","FK","GF","GY","PY","PE","SR","UY","VE"],
    
        "world": Locale.isoRegionCodes
    
]

enum ContinentIdentificator: String {
    case world, africa, asia, europe, northAmerica, southAmerica, oceania
}
