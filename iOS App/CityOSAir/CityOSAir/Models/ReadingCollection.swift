//
//  ReadingCollection.swift
//  CityOSAir
//
//  Created by Andrej Saric on 06/11/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import RealmSwift

class ReadingCollection: Object {
    
    dynamic var id = 1
    
    dynamic var lastUpdated: Date!
    
    let realmReadings = List<Reading>()
    
    convenience init(lastUpdated: Date, readings: [Reading], deviceId: Int) {
        self.init()
        
        self.lastUpdated = lastUpdated
        
        self.realmReadings.append(objectsIn: readings)
        
        self.id = deviceId
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    func getReadingValue(type: ReadingType) -> Double {
        if let reading = realmReadings.filter({ $0.readingType == type }).first {
            return reading.value
        }else {
            return 0
        }
    }
}
