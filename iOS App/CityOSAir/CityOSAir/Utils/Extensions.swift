//
//  Extensions.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit
import SystemConfiguration.CaptiveNetwork

extension UserDefaults {
    func isAppAlreadyLaunchedOnce() -> Bool{
        let defaults = UserDefaults.standard
        
        if let isAppAlreadyLaunchedOnce = defaults.string(forKey: "isAppAlreadyLaunchedOnce"){
            print("App already launched : \(isAppAlreadyLaunchedOnce)")
            return true
        }else{
            defaults.set(true, forKey: "isAppAlreadyLaunchedOnce")
            print("App launched first time")
            return false
        }
    }
}

extension String {
    var localized: String! {
        let localizedString = NSLocalizedString(self, comment: "")
        return localizedString
    }
    
    var isEmail: Bool {
        do {
            let regex = try NSRegularExpression(pattern: "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.characters.count)) != nil
        } catch {
            return false
        }
    }
    
    func dateFromString() -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        if let date = formatter.date(from: self) {
            return date.toLocalTime()
        }
        
        return nil
    }
}

extension Date {
    func toLocalTime() -> Date {
        let timezone: TimeZone = TimeZone.autoupdatingCurrent
        let seconds: TimeInterval = TimeInterval(timezone.secondsFromGMT(for: self))
        return Date(timeInterval: seconds, since: self)
    }
    
    func isToday() -> Bool {
        let cal = Calendar.current
        var components = (cal as NSCalendar).components([.era, .year, .month, .day], from:Date())
        let today = cal.date(from: components)!
        
        components = (cal as NSCalendar).components([.era, .year, .month, .day], from:self)
        let otherDate = cal.date(from: components)!
        
        return (today == otherDate)
    }
    
    func isSameHourAs(_ date: Date) -> Bool {
        
        let cal = Calendar.current
        var components = (cal as NSCalendar).components([.era, .year, .month, .day, .hour], from:date)
        let second = cal.date(from: components)!
        
        components = (cal as NSCalendar).components([.era, .year, .month, .day, .hour], from:self)
        let first = cal.date(from: components)!
        
        return (first == second)
    }
    
    func dateToXAxisTimestamp() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: self)
    }
}

extension UIFont {
    
    static var delta : CGFloat {
        return UIDevice.delta
    }
    
    static func appRegularWithSize(_ size: CGFloat) -> UIFont {
        return UIFont(name: Styles.FontFace.regular, size: size * delta)!
    }
    
    static func appMediumWithSize(_ size: CGFloat) -> UIFont {
        return UIFont(name: Styles.FontFace.medium, size: size * delta)!
    }
    
    static func appUltraThinWithSize(_ size: CGFloat) -> UIFont {
        return UIFont(name: Styles.FontFace.ultraLight, size: size * delta)!
    }
}

extension UIColor {
    static func fromHex(_ hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString = cString.substring(from: cString.characters.index(cString.startIndex, offsetBy: 1))
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

extension UITableViewCell {
    
    func addBorder() {
        
        let border = CALayer()
        
        let dotImage = UIImage(named: "dot")!.colorizeWith(Styles.FormCell.inputColor)
        
        border.backgroundColor = (UIColor(patternImage: dotImage)).cgColor
        
        border.frame = CGRect(x: 0, y: frame.size.height - 2, width: frame.size.width, height: 2)
        
        layer.addSublayer(border)
    }
}

class Gradient {
    class func mainGradient() -> CAGradientLayer {
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [
            Styles.Colors.gradientTop.cgColor,
            Styles.Colors.gradientBottom.cgColor
        ]
        
        return gradientLayer
    }
}

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    func alert(_ title:String, message:String?, close: String, closeHandler: ((UIAlertAction) -> Void)?) {
                
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: close, style: .cancel, handler: closeHandler))
        
        present(alert, animated: true, completion: nil)
    }
    
    fileprivate func darkView() -> UIView {
        
        let darkView = UIView(frame: UIScreen.main.bounds)
        darkView.tag = 123
        darkView.backgroundColor = UIColor.black.withAlphaComponent(0.7)
        
        UIApplication.shared.keyWindow?.addSubview(darkView)
        
        return darkView
    }
    
    func startLoading(_ message: String = "Loading...", _ action: Selector? = nil) {
        
        let coverView = darkView()
        
        if let action = action {
            
            let button = UIButton()
            button.setImage(UIImage(named: "closewhite"), for: UIControlState())
            button.tintColor = Styles.Colors.white
            button.translatesAutoresizingMaskIntoConstraints = false
            button.addTarget(self, action: action, for: .touchUpInside)
            coverView.addSubview(button)
            
            button.topAnchor.constraint(equalTo: coverView.topAnchor, constant: 30).isActive = true
            button.trailingAnchor.constraint(equalTo: coverView.trailingAnchor, constant: -15).isActive = true
        }
        
        let msgLabel = UILabel()
        msgLabel.font = Styles.Loading.font
        msgLabel.textColor = Styles.Loading.tintColor
        msgLabel.text = message
        msgLabel.sizeToFit()
        
        let spinner = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.whiteLarge)
        spinner.color = Styles.Loading.tintColor
        spinner.startAnimating()
        
        coverView.addSubview(msgLabel)
        coverView.addSubview(spinner)

        msgLabel.center = CGPoint(x: coverView.frame.size.width  / 2, y: (coverView.frame.size.height / 2) - 20);

        spinner.center = CGPoint(x: coverView.frame.size.width  / 2, y: (coverView.frame.size.height / 2) + 20);

    }
    
    func stopLoading() {
        UIApplication.shared.keyWindow?.viewWithTag(123)?.removeFromSuperview()
    }
}

extension UIView {
    
    func addConstraintsWithFormat(_ format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
    func addGradientAsBackground() {
        let gradient = Gradient.mainGradient()
        gradient.frame = self.bounds
        self.layer.insertSublayer(gradient, at: 0)
    }
    
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}

extension UITableView {
    
    func register<T: UITableViewCell>(_: T.Type) where T: Reusable {
        self.register(T.self, forCellReuseIdentifier: T.identifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T where T: Reusable {
        guard let cell = self.dequeueReusableCell(withIdentifier: T.identifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.identifier)")
        }
        
        return cell
    }
}

extension UIDevice {
    
    static var SSID: String? {
        get {
            if let interfaces = CNCopySupportedInterfaces() as NSArray? {
                for interface in interfaces {
                    if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                        return interfaceInfo[kCNNetworkInfoKeySSID as String] as? String
                    }
                }
            }
            return nil
        }
    }
    
    static var BSSID: String? {
        get {
            if let interfaces = CNCopySupportedInterfaces() as NSArray? {
                for interface in interfaces {
                    if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                        return interfaceInfo[kCNNetworkInfoKeyBSSID as String] as? String
                    }
                }
            }
            return nil
        }
    }
    
    static var delta : CGFloat {
        if UIDevice.isDeviceWithHeight480() {
            return 1.3 //1
        }else if UIDevice.isDeviceWithHeight568() {
            return 1.5
        }else if UIDevice.isDeviceWithHeight667() {
            return 1.8//2
        }else{
            return 2
        }
    }
    
    class func isDeviceWithWidth320 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.width == CGFloat(320.0) {
                return true;
            }
        }
        return false;
    }
    
    class func isDeviceWithWidth375 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.width == CGFloat(375.0) {
                return true;
            }
        }
        return false;
    }
    
    class func isDeviceWithWidth414 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.width == CGFloat(414.0) {
                return true;
            }
        }
        return false;
    }
    
    class func isDeviceWithHeight480 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.height == CGFloat(480.0) {
                return true;
            }
        }
        return false;
    }
    
    class func isDeviceWithHeight568 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.height == CGFloat(568.0) {
                return true;
            }
        }
        return false;
    }
    
    class func isDeviceWithHeight667 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.height == CGFloat(667.0) {
                return true;
            }
        }
        return false;
    }
    
    class func isDeviceWithHeight736 () -> Bool {
        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone {
            if UIScreen.main.bounds.size.height == CGFloat(736.0) {
                return true;
            }
        }
        return false;
    }
}

extension UIImage {
    
    func colorizeWith(_ color: UIColor) -> UIImage {
        UIGraphicsBeginImageContext(self.size)
        let context = UIGraphicsGetCurrentContext()
        color.setFill()
        context?.translateBy(x: 0, y: self.size.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        
        // set the blend mode to color burn, and the original image
        context?.setBlendMode(CGBlendMode.normal)
        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        context?.draw(self.cgImage!, in: rect)
        
        // set a mask that matches the shape of the image, then draw (color burn) a colored rectangle
        context?.clip(to: rect, mask: self.cgImage!)
        context?.addRect(rect);
        context?.drawPath(using: CGPathDrawingMode.fill)
        
        
        // generate a new UIImage from the graphics context we drew onto
        let coloredImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        //return the color-burned image
        return coloredImage!
    }
    
}
