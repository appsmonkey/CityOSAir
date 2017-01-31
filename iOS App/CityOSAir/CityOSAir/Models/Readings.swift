//
//  Readings.swift
//  CityOSAir
//
//  Created by Andrej Saric on 01/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import RealmSwift

class Reading: Object {
    
    dynamic var readingTypeRaw = 0
    
    dynamic var value = 0.0
    
    var readingType: ReadingType? {
        get {
            if let type = ReadingType(rawValue: readingTypeRaw) {
                return type
            }
            
            return nil
        }
    }
    
    convenience init(type: Int, value: Double) {
        
        self.init()
        
        self.readingTypeRaw = type
        
        self.value = value
    }
}

enum ReadingType: Int {
    case temperature = 1
    case humidity = 2
    case altitude = 3
    case uv = 10
    case light = 11
    case pm1 = 4
    case pm25 = 5
    case pm10 = 6
    case noise = 12
    case co = 13
    case no2 = 14
    case airPressure = 15
    
    var identifier: String {
        switch self {
        case .temperature:
            return "Temperature"
        case .humidity:
            return "Humidity"
        case .altitude:
            return "Feels like"//"Altitude"
        case .uv:
            return "UV Light"
        case .light:
            return "Light"
        case .pm1:
            return "PM₁"
        case .pm25:
            return "PM2.5"//"PM₂.₅"
        case .pm10:
            return "PM10"//"PM₁₀"
        case .noise:
            return "Noise"
        case .co:
            return "CO"
        case .no2:
            return "NO₂"
        case .airPressure:
            return "Air Pressure"
        }
    }
    
    var unitNotation: String {
        switch self {
        case .temperature:
            return "℃"
        case .humidity, .co, .no2:
            return "%"
        case .altitude:
            return "℃"//"m"
        case .uv:
            return "mW/cm³"
        case .light:
            return "lux"
        case .pm1, .pm25, .pm10:
            return "μg/m³"
        case .noise:
            return "db"
        case .airPressure:
            return "hPa"
        }
    }
    
    var image: String {
        switch self {
        case .temperature:
            return "temperature"
        case .humidity:
            return "humidity"
        case .altitude:
            return "altitude"
        case .uv:
            return "lux"
        case .light:
            return "light"
        case .pm1, .pm10, .pm25:
            return "pm"
        case .noise:
            return "noise"
        case .co:
            return "co"
        case .no2:
            return "gas"
        case .airPressure:
            return "pressure"
        }
    }
}
