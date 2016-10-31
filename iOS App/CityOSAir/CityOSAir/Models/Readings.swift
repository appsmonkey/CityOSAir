//
//  Readings.swift
//  CityOSAir
//
//  Created by Andrej Saric on 01/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation

struct Reading {
    var readingType: ReadingType?
    var value: Double
    
    init(type: Int, value: Double) {
        
        if let readingType = ReadingType(rawValue: type) {
            self.readingType = readingType
        }
        
        self.value = value
    }
}

enum ReadingType: Int {
    case temperature = 1
    case humidity
    case altitude
    case uv
    case light
    case pm1
    case pm25
    case pm10
    case noise
    case co
    case no2
    case airPressure
    
    var identifier: String {
        switch self {
        case .temperature:
            return "Temperature"
        case .humidity:
            return "Humidity"
        case .altitude:
            return "Altitude"
        case .uv:
            return "UV Light"
        case .light:
            return "Light"
        case .pm1:
            return "PM₁"
        case .pm25:
            return "PM2.5"//"PM₂.₅"
        case .pm10:
            return "PM₁₀"
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
            return "m"
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
