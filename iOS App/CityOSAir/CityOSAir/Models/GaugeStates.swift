//
//  GaugeStates.swift
//  CityOSAir
//
//  Created by Andrej Saric on 05/01/2017.
//  Copyright © 2017 CityOS. All rights reserved.
//

import UIKit

struct GaugeStates {
    static let great = GaugeConfig(progressColor: Styles.DetailStates.greatColor, maxValue: 500, progressValue: 300, ribbonText: Text.Ribbons.great, ribbonImage: #imageLiteral(resourceName: "ribbon-great"), centerImage: #imageLiteral(resourceName: "status-great-black"))
    
    static let ok = GaugeConfig(progressColor: Styles.DetailStates.okColor, maxValue: 500, progressValue: 300, ribbonText: Text.Ribbons.ok, ribbonImage: #imageLiteral(resourceName: "ribbon-ok"), centerImage: #imageLiteral(resourceName: "status-ok-black"))
    
    static let sensitive = GaugeConfig(progressColor: Styles.DetailStates.sensitiveColor, maxValue: 500, progressValue: 300, ribbonText: Text.Ribbons.sensitive, ribbonImage: #imageLiteral(resourceName: "ribbon-sensitive"), centerImage: #imageLiteral(resourceName: "status-sensitive-black"))
    
    static let unhealthy = GaugeConfig(progressColor: Styles.DetailStates.unhealthyColor, maxValue: 500, progressValue: 300, ribbonText: Text.Ribbons.unhealthy, ribbonImage: #imageLiteral(resourceName: "ribbon-unhealthy"), centerImage: #imageLiteral(resourceName: "status-unhealthy-black"))
    
    static let veryUnhealthy = GaugeConfig(progressColor: Styles.DetailStates.veryUnhealthyColor, maxValue: 500, progressValue: 300, ribbonText: Text.Ribbons.veryUnhealthy, ribbonImage: #imageLiteral(resourceName: "ribbon-veryunhealthy"), centerImage: #imageLiteral(resourceName: "status-veryunhealthy-black"))
    
    static let hazardous = GaugeConfig(progressColor: Styles.DetailStates.hazardousColor, maxValue: 500, progressValue: 300, ribbonText: Text.Ribbons.hazardous, ribbonImage: #imageLiteral(resourceName: "ribbon-hazardous"), centerImage: #imageLiteral(resourceName: "status-hazardous-black"))
    
    static func getConfigForValue(pm10Value: Double, pm25Value: Double) -> GaugeConfig {
        
        let pm10Aqi = AQI.getAQIForTypeWithValue(value: pm10Value, aqiType: .pm10)
        
        let pm25Aqi = AQI.getAQIForTypeWithValue(value: pm25Value, aqiType: .pm25)
        
        
        var aqiToUse: AQI
        var valueToUse: Double
        var maxValue: Double
        var congif: GaugeConfig
        
        if pm10Aqi.rawValue > pm25Aqi.rawValue {
            aqiToUse = pm10Aqi
            valueToUse = pm10Value
            maxValue = AQIType.pm10.maxValue
        }else {
            aqiToUse = pm25Aqi
            valueToUse = pm25Value
            maxValue = AQIType.pm25.maxValue
        }
        
        switch aqiToUse {
            case .great:
                congif = great
            case .ok:
                congif = ok
            case .sensitive:
                congif = sensitive
            case .unhealthy:
                congif = unhealthy
            case .veryUnhealthy:
                congif = veryUnhealthy
            case .hazardous:
                congif = hazardous
            }
        
        congif.maxValue = maxValue
        congif.progressValue = valueToUse
        
        return congif
    }
}
