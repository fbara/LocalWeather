//
//  WeatherResponse.swift
//  LocalWeather
//
//  Created by Frank Bara on 2/10/22.
//

import Foundation

struct WeatherResponse: Codable {
    
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
        return WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 8))
    }
}
