//
//  CurrentWeather.swift
//  rainyshinycloudy
//
//  Created by Mohd Adam on 07/02/2017.
//  Copyright © 2017 Mohd Adam. All rights reserved.
//

import UIKit
import Alamofire

class CurrentWeather {
    
    var _cityName: String!
    var _date: String!
    var _weatherType: String!
    var _currentTemp: Double!
    
    var cityName: String {
        
        if _cityName == nil {
            
            _cityName = ""
        }
        
        return _cityName
    }
    
    var date: String {
        
        if _date == nil {
            _date = ""
        }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        
        let currentDate = dateFormatter.string(from: Date())
        
        self._date = "Today, \(currentDate)"
        
        return _date
    }
    
    var weatherType: String {
        
        if _weatherType == nil {
            
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var currentTemp: Double {
        
        if _currentTemp == nil {
            
            _currentTemp = 0.0
        }
        
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed:@escaping  DownloadComplete) {
        
        //Alamofire download
        
        if let currentWeatherURL = URL(string: "http://api.openweathermap.org/data/2.5/weather?lat=37.7873589&lon=-122.408227&appid=39bf8746a93259509d92ce20d03c1b84") {
         Alamofire.request(currentWeatherURL).responseJSON(completionHandler: { (response) in
            let result = response.data
            if let jsonData = try? JSONSerialization.jsonObject(with: result!, options: []) as? [String : Any]{
                print(jsonData)
                completed()
            }
         
         })

        }
    }
}

