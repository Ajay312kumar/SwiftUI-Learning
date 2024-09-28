//
//  APIEndPoint.swift
//  Weatherly
//
//  Created by Ajay Kumar on 27/08/24.
//

import Foundation


enum APIEndPoint{
    
    static var baseUrl = "https://api.openweathermap.org/geo/1.0/direct?q=\(city)&limit=5&appid=\(Constant.weatherKey)"
    
    case coordinateByLocationName(String)
    case weatherByLatLong(Double, Double)
    
    private var path: String{
        switch self{
        case .coordinateByLocationName(let city):
            return "geo/1.0/direct?q=\(city)&limit=5&appid=\(Constant.weatherKey)"
        case .weatherByLatLong(let lat, let lon):
            return "data/2.5/weather?\(lat)&\(lon)&appid=\(Constant.weatherKey)"
        }
    }
    
    static func endPointUrl(for endpoint: APIEndPoint) -> URL{
        
        let endPointPath = endpoint.path
        return URL(string: baseUrl + endPointPath)!
        
    }
}
