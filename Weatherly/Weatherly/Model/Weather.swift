//
//  Weather.swift
//  Weatherly
//
//  Created by Ajay Kumar on 27/08/24.
//

import Foundation

struct WeatherResponse: Decodable{
    
    var main: Weather
}

struct Weather: Decodable{
    
    var temp: Double
    
}
