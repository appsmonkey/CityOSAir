//
//  Styles.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

struct Styles {
    
    struct FontFace {
        fileprivate static let baseFont = "AvenirNext-"
        static let ultraLight = "\(baseFont)UltraLight"
        static let regular = "\(baseFont)Regular"
        static let medium = "\(baseFont)Medium"
    }
    
    struct Intro {
        
        struct HeaderText {
            static let font = UIFont.appRegularWithSize(15)
            static let tintColor = UIColor.fromHex("666666")
        }
        
        struct SubtitleText {
            static let font = UIFont.appRegularWithSize(10.5)
            static let tintColor = UIColor.fromHex("9e9e9e")
            static let lineSpacing = 14.0
        }
        
    }
    
    struct Detail {
        
        struct HeaderText {
            static let font = UIFont.appRegularWithSize(16.5)
            static let tintColor = Colors.white
        }
        
        struct SubtitleText {
            static let font = UIFont.appRegularWithSize(7.5)
            static let tintColor = UIColor.fromHex("61fffb")
        }
        
    }
    
    struct Graph {
        
        struct HeaderText {
            static let font = UIFont.appRegularWithSize(16.5)
            static let tintColor = Colors.white
        }
        
        struct SubtitleText {
            static let font = UIFont.appRegularWithSize(8)
            static let tintColor = Colors.white
        }
        
        struct ReadingLabel {
            static let font = UIFont.appUltraThinWithSize(51)
            static let tintColor = Colors.white
        }
        
        struct GraphLabels {
            static let font = UIFont.appRegularWithSize(6.88)
            static let tintColor = Colors.white.withAlphaComponent(0.71)
        }
    }
    
    struct NavigationBar {
        static let font = UIFont.appMediumWithSize(11)
        static let tintColor = UIColor.fromHex("4a4a4a")
    }
    
    struct BigButton {
        static let font = UIFont.appRegularWithSize(14.5)
        static let tintColor = Colors.white
        static let backgroundColor = UIColor.fromHex("45cfdc")
    }
    
    struct SmallButton {
        static let font = UIFont.appRegularWithSize(10)
        static let tintColor = UIColor.fromHex("43c5db")
    }
    
    struct FormCell {
        static let font = UIFont.appMediumWithSize(10)
        static let placeholderColor = UIColor.fromHex("c8c7cc")
        static let inputColor = UIColor.fromHex("525252")
    }
    
    struct DataCell {
        
        struct IdentifierLabel {
            static let font = UIFont.appRegularWithSize(9.18)
            static let subscriptFont = UIFont.appRegularWithSize(9.18/2)
            static let tintColor = Colors.white
        }
        
        struct ReadingLabel {
            static let numberFont = UIFont.appRegularWithSize(10.5)
            static let tintColor = UIColor.fromHex("61fffb")
        }
        
        struct NotationLabel {
            static let identifierFont = UIFont.appRegularWithSize(6.5)
            static let tintColor = UIColor.fromHex("61fffb")
        }
        
    }
    
    struct Loading {
        static let font = UIFont.appRegularWithSize(12.5)
        static let tintColor = UIColor.fromHex("caebed")
    }
    
    struct Colors {
        static let white = UIColor.white
        static let gradientTop = UIColor.fromHex("15b2ba")
        static let gradientBottom = UIColor.fromHex("39b2cf")
    }
    
    static func cellHeight(_ cellType: CellType) -> CGFloat {
        
        let delta = UIDevice.delta
        
        switch cellType {
        case .bigBtn:
//            let size = 50 * delta
            return 100//size < 80 ? 80 : size//100
        case .password, .email, .confirmPassword , .wiFiName, .wiFiPassword:
            return 30 * delta//60
        case .smallBtn:
            return 25 * delta//50
        }
    }
}
