//
//  Constants.swift
//  rainyshinycloudy
//
//  Created by Mohd Adam on 07/02/2017.
//  Copyright © 2017 Mohd Adam. All rights reserved.
//

import Foundation


let BASE_URL = " http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid"
let API_KEY = "81535a7318225da4b1119ed52d953bf7"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(API_KEY)"
