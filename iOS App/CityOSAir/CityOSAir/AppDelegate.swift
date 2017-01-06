//
//  AppDelegate.swift
//  CityOSAir
//
//  Created by Andrej Saric on 25/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        Fabric.with([Crashlytics.self])
        
        realmMigration()
        
        setGlobalAppearance()
        
        let frame = UIScreen.main.bounds
        self.window = UIWindow(frame: frame)
        
        if let window = self.window {
            
            
            if !UserDefaults.standard.isAppAlreadyLaunchedOnce() {
                
                Cache.sharedCache.saveDevices(deviceCollection: [])
                
                let navigationController = UINavigationController(rootViewController: LogInViewController())
                navigationController.interactivePopGestureRecognizer?.isEnabled = false
                window.rootViewController = navigationController

            }else {
                
                let deviceVC = DeviceInfoViewController()
                
                deviceVC.device = Cache.sharedCache.getDeviceCollection()?.first

                if let user = UserManager.sharedInstance.getLoggedInUser() {
                    
                    //getting new token
                    UserManager.sharedInstance.logingWithCredentials(user.email, password: user.password, completion: {_,_,_ in })
                
                }
                
                let slideMenuViewController = SlideMenuController(mainViewController: deviceVC, leftMenuViewController: MenuViewController())
                SlideMenuOptions.contentViewScale = 1
                SlideMenuOptions.hideStatusBar = false
                window.rootViewController = slideMenuViewController
            }
            
            
            
            window.makeKeyAndVisible()
        }
        
        return true
    }
}

extension AppDelegate {
    fileprivate func setGlobalAppearance() {
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : Styles.NavigationBar.tintColor, NSFontAttributeName: Styles.NavigationBar.font]
        UINavigationBar.appearance().barTintColor = UIColor(red:0.95, green:0.95, blue:0.95, alpha:1.00)
        
        //hide nav bar line
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        UINavigationBar.appearance().shadowImage = UIImage()
        
        //set nav back button
        let backArrowImage = UIImage(named: "backbtn")
        let renderedImage = backArrowImage?.withRenderingMode(.alwaysOriginal)
        UINavigationBar.appearance().backIndicatorImage = renderedImage
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = renderedImage
        
        //hide back button text
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffsetMake(0, -60), for:UIBarMetrics.default)
    }
    
    fileprivate func realmMigration() {
        
        Realm.Configuration.defaultConfiguration.deleteRealmIfMigrationNeeded = true
        
        let config = Realm.Configuration(
        // Set the new schema version. This must be greater than the previously used
        // version (if you've never set a schema version before, the version is 0).
        schemaVersion: 1,
        
        // Set the block which will be called automatically when opening a Realm with
        // a schema version lower than the one set above
        migrationBlock: { migration, oldSchemaVersion in
        // We haven’t migrated anything yet, so oldSchemaVersion == 0
        if (oldSchemaVersion < 1) {
        // Nothing to do!
        // Realm will automatically detect new properties and removed properties
        // And will update the schema on disk automatically
        }
        })
        
        // Tell Realm to use this new configuration object for the default Realm
        Realm.Configuration.defaultConfiguration = config
        
        // Now that we've told Realm how to handle the schema change, opening the file
        // will automatically perform the migration
        let _ = try! Realm()
    }
}

