//
//  Text.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation

struct Text {
    
    struct Buttons {
        static let continueBtn = "Continue"
    }
    
    struct Placeholders {
        static let email = "Email"
        static let password = "Password"
        static let confirmPassword = "Confirm password"
        static let wifiPassword = "WiFi Password"
    }
    
    struct CreateIntro {
        
        static let topText = "The Clean Air\n Movement Starts Here"
        
        struct Buttons {
            static let start = "Get Started"
        }
    }
    
    struct ConnectIntro {
        
        static let topText = "Connect to Air"
        
        static let contentText = "Press and hold the gold\n button below until a blue light\n starts blinking."
        
        struct Buttons {
            static let logout = "Logout"
        }
        
        struct Messages {
            static let alertMsg = "Couldn't find device. Make sure the battery is charged."
            static let alertBtn = "OK"
            static let loadingMsg = "Processing..."
        }
    }
    
    struct ConnectWiFI {
        static let title = "Connect to WiFi"
        
        struct Messages {
            static let connecting = "Connecting to WiFI..."
            static let connected = "Connected to "
        }
    }
    
    struct MyDevice {
        
        static let title = "My Device"
        
        static let wifi = "Wifi Settings"
        
        static let forget = "Forget Device"
        
        static let logout = "Logout"
        
    }
    
    struct AccountCreate {
        
        static let title = "Create Account"
        
        struct Buttons {
            static let existingAccBtn = "Log into existing account"
        }

        struct Messages {
            static let emailError = "Please enter a valid email address"
            static let passwordError = "Passwords don't match"
            static let loadingMsg = "Creating account..."
        }
    }
    
    struct LogIn {
        
        static let title = "Log In"
        
        struct Buttons {
            static let forgotPassword = "Forgot Password?"
        }
        
        struct Messages {
            static let loadingMsg = "Logging in..."
        }
    }
    
    struct ResetPassword {
        
        static let title = "Reset Password"
        
        struct Messages {
            static let alertMsg = "We emailed you a link to reset your password."
            static let alertBtn = "Go to Login"
        }
    }
    
    struct Readings {
        static let title = "My Air"
        static let subtitle = "Updated "
    }
}


