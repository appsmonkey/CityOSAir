//
//  User.swift
//  CityOSAir
//
//  Created by Andrej Saric on 01/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    
    dynamic var id = 1
    
    dynamic var email: String = ""
    dynamic var password: String = ""
    dynamic var token: String = ""

    convenience init(json: JSON) {
        self.init()
        self.token = json["token"].stringValue
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
