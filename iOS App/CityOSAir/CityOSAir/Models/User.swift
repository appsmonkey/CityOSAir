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
    
    dynamic var token: String = ""
    let deviceId = RealmOptional<Int>()
    
    convenience init(json: JSON) {
        self.init()
        self.token = json["token"].stringValue
    }
}