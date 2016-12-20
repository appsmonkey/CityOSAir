//
//  AirService.swift
//  CityOSAir
//
//  Created by Andrej Saric on 01/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation

class AirService {
    
    static func login(_ params: [String: String], completion: @escaping (_ success: Bool, _ message: String, _ user: User?) -> ()) {
        
        API.dataTask(API.Endpoints.login, params: params as [String : AnyObject]?) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                if success {
                    if let json = json {

                        let data = User(json: json)
                        completion(true, "OK", data)
                        return
                    }
                    
                    completion(true, "Json parse failed", nil)
                }else {
                    if statusCode == 401 {
                        completion(false, "Please check your password", nil)
                    }else if  statusCode == 404 {
                        completion(false, "Please check your email", nil)
                    }else {
                        completion(false, "Something went wrong", nil)
                    }
                }
            }
        }
    }
    
    static func register(_ params: [String: String], completion: @escaping (_ success: Bool, _ message: String) -> ()) {
        
        API.dataTask(API.Endpoints.register, params: params as [String : AnyObject]?) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                if success {
                    completion(true, "OK")
                    return
                }
                    completion(false, "Failed")
            }
        }
    }
    
    static func device(_ completion: @escaping (_ success: Bool, _ message: String, _ deviceID: Int?) -> ()) {
        
        API.dataTask(API.Endpoints.device, params: nil) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                if success {
                    if let json = json {
                        
                        if let id = json["id"].int {
                            completion(true, "OK", id)
                            return
                        }else {
                            completion(true, "Json parse failed", nil)
                        }
                    }
                    
                    completion(true, "Json parse failed", nil)
                }else {
                    completion(false, "Failed", nil)
                }
            }
        }
    }
    
    static func registerDevice(_ bssid: String, lat: Double, long: Double, completion: @escaping (_ success: Bool, _ message: String, _ deviceID: Int?) -> ()) {
        
        var params: Dictionary<String, AnyObject> = ["model": "CityOSAir" as AnyObject, "schemaId": 1 as AnyObject, "groupId": 1 as AnyObject, "identification": bssid as AnyObject]

        let location = ["latitude": lat, "longitude": long]
        
        params["location"] = location as AnyObject?
        
        API.dataTask(API.Endpoints.deviceRegister, params: params) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                if success {
                    
                    if let json = json {
                        if let id = json["id"].int {
                            completion(true, "OK", id)
                        }
                    }
                }
                
                completion(false, "Failed", nil)
            }
        }
        
    }
    
    static func forgetDevice(_ deviceID: Int, completion: @escaping (_ success: Bool, _ message: String) -> ()) {
        API.dataTask(API.Endpoints.forget(deviceID: deviceID), params: nil) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                if success {
                    completion(true, "OK")
                }else {
                    completion(false, "Failed")
                }
            }
        }
    }
    
    static func latestReadings(_ deviceID: Int, completion: @escaping (_ success: Bool, _ message: String, _ readings: ReadingCollection?) -> ()) {
        
        API.dataTask(API.Endpoints.readingsLatest(deviceID: deviceID), params: nil) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                
                var readingCollection = Cache.sharedCache.getReadingCollection()
                
                if success {
                    if let json = json {
                        
                        var readings = [Reading]()
                        
                        for i in Array(1...11) {
                            
                            if let value = json["\(i)"].double {
                                readings.append(Reading(type: i, value: value))
                            }
                        }
                        
                        readingCollection = ReadingCollection(lastUpdated: Date(), readings: readings)
                        
                        if let readingCollection = readingCollection {
                            Cache.sharedCache.saveReadingCollection(readingCollection: readingCollection)
                        }
                    
                        completion(true, "OK", readingCollection)
                        
                        return
                    }
                    
                    completion(true, "Json parse failed", readingCollection)
                }else {
                    completion(false, "Failed", readingCollection)
                }
            }
        }
    }
    
    static func readingsForSensor(_ deviceID: Int, sensorID: Int, numberOfReadings: Int = 50, completion: @escaping (_ success: Bool, _ message: String, _ chartPoints: [ChartPoint]?) -> ()) {
        
        API.dataTask(API.Endpoints.sensorReadings(deviceID: deviceID, sensorID: sensorID, numberOfReadings: numberOfReadings), params: nil) { (success, json, statusCode) in
            
            DispatchQueue.main.async {
                if success {
                    if let json = json {
                        
                        var readings = [ChartPoint]()
                        
                        for innerJson in json.arrayValue {
                            readings.append(ChartPoint(json: innerJson))
                        }
                        
                        completion(true, "OK", readings.reversed())
                        
                        return
                    }
                    
                    completion(true, "Json parse failed", nil)
                }else {
                    completion(false, "Failed", nil)
                }
            }
        }
    }
}
