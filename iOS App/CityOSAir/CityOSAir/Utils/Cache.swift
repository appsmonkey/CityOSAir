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
    
    func getReadingCollection() -> ReadingCollection? {
        do {
            
            let realm = try Realm()
            
            if let result = realm.objects(ReadingCollection.self).first {
                return result
            }
            
            return nil
            
        } catch {
            print(error)
            return nil
        }
    }
}
