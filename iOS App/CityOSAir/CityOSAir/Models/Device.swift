//
//  Device.swift
//  CityOSAir
//
//  Created by Andrej Saric on 06/01/2017.
//  Copyright © 2017 CityOS. All rights reserved.
//

import RealmSwift
    
class Device: Object {
        
    dynamic var active : Bool = false
    dynamic var addOn : String = ""
    dynamic var editOn : String = ""
    dynamic var groupId : Int = 0
    dynamic var id : Int = 0
    dynamic var identification : String = ""
    dynamic var latitude : Double = 0.0
    dynamic var location : Location?
    dynamic var longitude : Double = 0.0
    dynamic var model : String = ""
    dynamic var schemaId : Int = 0
    dynamic var userId : Int = 0
    dynamic var indoor: Bool = false
    dynamic var name: String = ""
    
    convenience init(fromJson json: JSON!) {
        self.init()
        
        if json.isEmpty{
            return
        }
        active = json["active"].boolValue
        addOn = json["addOn"].stringValue
        editOn = json["editOn"].stringValue
        groupId = json["groupId"].intValue
        id = json["id"].intValue
        identification = json["identification"].stringValue
        latitude = json["latitude"].doubleValue
        let locationJson = json["location"]
        if !locationJson.isEmpty{
            location = Location(fromJson: locationJson)
        }
        longitude = json["longitude"].doubleValue
        model = json["model"].stringValue
        schemaId = json["schemaId"].intValue
        userId = json["userId"].intValue
        
        identification = json["identification"].stringValue
        indoor = json["indoor"].boolValue
        name = json["name"].stringValue
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Location: Object {
    
    dynamic var latitude : Double = 0.0
    dynamic var longitude : Double = 0.0
    
    convenience init(fromJson json: JSON!) {
        self.init()
        
        if json.isEmpty{
            return
        }
        latitude = json["latitude"].doubleValue
        longitude = json["longitude"].doubleValue
    }
    
}
