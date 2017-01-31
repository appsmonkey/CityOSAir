//
//  Cache.swift
//  CityOSAir
//
//  Created by Andrej Saric on 06/11/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import RealmSwift

protocol CacheUsable: class {
    func didUpdateDeviceCache()
}

final class Cache {

    static let sharedCache = Cache()

    weak var delegate: CacheUsable?
    
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
            defDevice.name = Text.Readings.title
            defDevice.id = 0
            
            deviceCollection.append(defDevice)
            
            let realm = try Realm()
            
            let realmDevices = realm.objects(Device.self).filter("id != %d", 0)
            
            try realm.write {
                
                realm.delete(realmDevices)
                
                realm.add(deviceCollection, update: true)
                
                delegate?.didUpdateDeviceCache()
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
    
    func getDeviceForName(name: String) -> Device? {
        do {
            
            let realm = try Realm()
            
            if let realmDevice = realm.objects(Device.self).filter("name = %@", name).first {
            
                let device = Device()
                
                device.active = realmDevice.active
                device.addOn = realmDevice.addOn
                device.editOn = realmDevice.editOn
                device.groupId = realmDevice.groupId
                device.id = realmDevice.id
                device.identification = realmDevice.identification
                device.indoor = realmDevice.indoor
                device.latitude = realmDevice.latitude
                device.longitude = realmDevice.longitude
                device.location = realmDevice.location
                device.model = realmDevice.model
                device.name = realmDevice.name
                device.schemaId = realmDevice.schemaId
                device.userId = realmDevice.userId
            
                return device
            }
            
            return nil
            
        } catch {
            print(error)
            return nil
        }
    }
}
