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

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        Fabric.with([Crashlytics.self])
        
        setGlobalAppearance()
        
        let frame = UIScreen.main.bounds
        self.window = UIWindow(frame: frame)
        
        if let window = self.window {
            
            
            if !UserDefaults.standard.isAppAlreadyLaunchedOnce() {
                
                let navigationController = UINavigationController(rootViewController: LogInViewController())
                navigationController.interactivePopGestureRecognizer?.isEnabled = false
                window.rootViewController = navigationController

            }else {
                
                if let user = UserManager.sharedInstance.getLoggedInUser() {
                    
                    UserManager.sharedInstance.logingWithCredentials(user.email, password: user.password, completion: {_,_,_ in })
                    
//                    if user.deviceId.value != nil {
//                        let slideMenuViewController = SlideMenuController(mainViewController: DeviceInfoViewController(), leftMenuViewController: MenuViewController())
//                        navigationController.viewControllers.append(slideMenuViewController)
//                    } else {
//                        navigationController.viewControllers.append(ConnectIntroViewController())
//                    }
                }
                
                let slideMenuViewController = SlideMenuController(mainViewController: DeviceInfoViewController(), leftMenuViewController: MenuViewController())
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
}

