//
//  Enums.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation

enum CellType {
    case email
    case password
    case confirmPassword
    case wiFiName
    case wiFiPassword
    case bigBtn
    case bigBtnSecondary
    case smallBtn
}


enum MenuCells {
    
    case cityAir
    case cityMap
    case cityDevice(name: String)
    case logIn
    case aqiPM10
    case aqiPM25
    case settings
    case deviceRefresh
    
    var text: String {
        switch self {
        case .cityAir:
            return Text.Menu.cityAir
        case .cityMap:
            return Text.Menu.cityMap
        case .cityDevice(let name):
            return name
        case .logIn:
            return Text.Menu.logIn
        case .aqiPM10:
            return Text.Menu.aqiPM10
        case .aqiPM25:
            return Text.Menu.aqiPM25
        case .settings:
            return Text.Menu.settings
        case .deviceRefresh:
            return Text.Menu.deviceRefresh
        }
    }
}
