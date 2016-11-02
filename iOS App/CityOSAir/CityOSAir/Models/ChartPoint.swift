//
//  ChartPoint.swift
//  CityOSAir
//
//  Created by Andrej Saric on 03/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation

struct ChartPoint {
    
    var xLabel: String {
        get {
            return date.dateToXAxisTimestamp()
        }
    }
    var value: Double
    var date: Date
    
    init(json: JSON) {
        
        if let date = json["edit_on"].string?.dateFromString() {
            self.date = date
        }else {
            self.date = Date()
        }
        
        value = json["value"].doubleValue
    }
}

extension ChartPoint: Equatable {}

func ==(lhs: ChartPoint, rhs: ChartPoint) -> Bool {
    return lhs.date.isSameHourAs(rhs.date)
}
