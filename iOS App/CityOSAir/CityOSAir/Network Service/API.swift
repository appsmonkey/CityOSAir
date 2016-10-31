//
//  API.swift
//  CityOSAir
//
//  Created by Andrej Saric on 01/09/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

open class API {
    
    open static let baseURL = "http://api.cityos.io/"
    
    public enum Endpoints {
        
        case login
        case register
        case device
        case deviceRegister
        case readingsLatest(deviceID: Int)
        case sensorReadings(deviceID: Int, sensorID: Int, numberOfReadings: Int)
        case reset
        case forget(deviceID: Int)
        
        public var method: String {
            switch self {
            case .login, .register, .reset, .deviceRegister:
                return "POST"
            case .device, .readingsLatest , .sensorReadings, .forget:
                return "GET"
            }
        }
        
        public var path: String {
            switch self {
            case .login:
                return "\(baseURL)user/login"
            case .register:
                return "\(baseURL)user/register"
            case .device:
                return "\(baseURL)device/my/default"
            case .deviceRegister:
                return "\(baseURL)device"
            case .reset:
                return "\(baseURL)user/reset"
            case .forget(let deviceID):
                return "\(baseURL)device/forget/\(deviceID)"
            case .readingsLatest(let deviceID):
                return "\(baseURL)device/\(deviceID)/latest"
            case .sensorReadings(let deviceID, let sensorID, let numberOfReadings):
                return "\(baseURL)device/\(deviceID)/sensor/\(sensorID)?count=\(numberOfReadings)"
            }
        }
        
    }
    
    static func dataTask(_ endpoint: API.Endpoints, params: [String:AnyObject]?, completion: @escaping (_ success: Bool, _ json: JSON?) -> ())
    {
        let request = NSMutableURLRequest(url: URL(string: endpoint.path)!)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.httpMethod = endpoint.method
        
        if let params = params {
            do {
                let json = try JSONSerialization.data(withJSONObject: params, options: JSONSerialization.WritingOptions.init(rawValue: 0))
                request.httpBody = json
            } catch {
                completion(false, nil)
            }
        }
        
        if let user = UserManager.sharedInstance.getLoggedInUser() {
            request.addValue("Bearer \(user.token)", forHTTPHeaderField: "Authorization")
        }
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            
            if let data = data {
                
                let json = JSON(data: data)
                
                if let response = response as? HTTPURLResponse , 200...299 ~= response.statusCode {
                    completion(true, json)
                } else {
                    completion(false, nil)
                }
            }else {
                completion(false, nil)
            }
        }) .resume()
    }
}
