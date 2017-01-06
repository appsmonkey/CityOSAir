//
//  Cache.swift
//  CityOSAir
//
//  Created by Andrej Saric on 06/11/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import RealmSwift

final class Cache {

    static let sharedCache = Cache()
    
    fileprivate init() {}
    
    func saveReadingCollection(readingCollection: ReadingCollection) {
        do {
    
            let realm = try Realm()
            
            try realm.write {
                realm.add(readingCollection, update: true)
            }
            
            return
            
        } catch {
            print(error)
        }
    }
    
    func getReadingCollectionForDevice(deviceId: Int) -> ReadingCollection? {
        do {
            
            let realm = try Realm()
            
            if let result = realm.object(ofType: ReadingCollection.self, forPrimaryKey: deviceId) {
                return result
            }
            
            return nil
            
        } catch {
            print(error)
            return nil
        }
    }
    
    
    func saveDevices(deviceCollection: [Device]) {
        do {
            
            var deviceCollection = deviceCollection
            
            let defDevice = Device()
            defDevice.identification = Text.Readings.title
            defDevice.id = 0
            
            deviceCollection.append(defDevice)
            
            let realm = try Realm()
            
            try realm.write {
                realm.add(deviceCollection, update: true)
            }
            
            return
            
        } catch {
            print(error)
        }
    }
    
    func getDeviceCollection() -> [Device]? {
        do {
            
            let realm = try Realm()
            
            return realm.objects(Device.self).toArray()
            
        } catch {
            print(error)
            return nil
        }
    }
    
    func getDeviceForIdentifier(identifier: String) -> Device? {
        do {
            
            let realm = try Realm()
            
            return realm.objects(Device.self).filter("identification = %@", identifier).first
            
        } catch {
            print(error)
            return nil
        }
    }
}
