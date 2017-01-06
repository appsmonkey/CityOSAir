//
//  UserManager.swift
//  CityOSAir
//
//  Created by Andrej Saric on 01/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import RealmSwift

class UserManager {
    
    let realm = try! Realm()
    
    static let sharedInstance = UserManager()
    
    fileprivate init() {
        
    }
    
    func getLoggedInUser() -> User? {
        return realm.objects(User.self).first
    }
    
    func logoutUser() {
        
        let users = self.realm.objects(User.self)
        
        try! self.realm.write {
            self.realm.delete(users)
        }
        
        clearDevices()
        clearReadings()
    }
    
    func clearDevices() {
        let devices = self.realm.objects(Device.self).filter("id != %@", 0)
        
        try! self.realm.write {
            self.realm.delete(devices)
        }
    }
    
    func clearReadings() {
        let readings = self.realm.objects(ReadingCollection.self).filter("id != %@", 0)
        
        try! self.realm.write {
            self.realm.delete(readings)
        }
    }
    
//    @discardableResult func associateDeviceWithUser(_ deviceID: Int) -> User? {
//        
//        let user = self.realm.objects(User.self).first
//        
//        try! self.realm.write {
//            user!.deviceId.value = deviceID
//        }
//        
//        return user
//    }
//    
//    @discardableResult func deAssociateDeviceWithUser() -> User? {
//        
//        let user = self.realm.objects(User.self).first
//        
//        try! self.realm.write {
//            user!.deviceId.value = nil
//        }
//        
//        return user
//    }
    
    func logingWithCredentials(_ email:String, password:String, completion: @escaping (_ result:User?, _ hasDevice: Bool, _ message: String) -> Void) {
        
        print(["email":email,"password":password])
        
        AirService.login(["email":email,"password":password]) { (success, message, user) in
            
            if success {

                if let usr = user {
                    
                    usr.email = email
                    usr.password = password
                    
                    try! self.realm.write {
                        self.realm.add(usr, update: true)
                    }
                    
                    AirService.device({ (success, message, devices) in
                        if success {
                            
                            if let devices = devices {
                                Cache.sharedCache.saveDevices(deviceCollection: devices)
                                completion(user, true, message)
                                return
                            }
                        }
                        
                        completion(user, false, message)
                    })
                }
            }else {
                completion(nil, false, message)
            }
        }
    }
    
    func registerUser(_ email: String, password: String, confirmPassword: String, completion: @escaping (_ message:String?, _ success: Bool) -> Void) {
        AirService.register(["email": email, "password": password, "passwordConfirm": confirmPassword]) { (success, message) in
            if success {
                self.logingWithCredentials(email, password: password) { (result, hasDevice, message) in
                    if result != nil {
                        completion("Logged in", true)
                    }else {
                        completion("Log in failed", false)
                    }
                }
            }else {
                completion("Account creation failed", false)
            }
        }
    }
    
    func resetPassword(_ email: String, completion: (_ success:Bool) -> Void) {
        completion(true)
    }
}
