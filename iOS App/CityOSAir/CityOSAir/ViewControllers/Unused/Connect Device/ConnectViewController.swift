//
//  ConnectViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit
import CoreLocation

class ConnectViewController: UIViewController {

    var password: String?
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        
        table.dataSource = self
        table.delegate = self
        table.register(InputTableViewCell.self)
        table.register(BigButtonTableViewCell.self)
        table.tableFooterView = UIView()
        table.separatorStyle = .none
        table.alwaysBounceVertical = false
        
        return table
    }()
    
    let manager = CLLocationManager()
    
    let data: [CellType] = [.wiFiName, .wiFiPassword, .bigBtn]
    
    var task: ESPTouchTask?
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = Text.ConnectWiFI.title
        
        setUI()
        
        manager.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(cancelTask), name: NSNotification.Name.UIApplicationWillResignActive, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if CLLocationManager.authorizationStatus() == .notDetermined || CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            manager.requestWhenInUseAuthorization()
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        cancelTask()
    }
    
    fileprivate func setUI() {
        
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat("V:|[v0]|", views: tableView)
    }
    
    func continuePressed() {
        
        if UIDevice.SSID == nil {
            alert("Unable to retrieve SSID please connect to wireless and try again.", message: nil, close: "Close", closeHandler: nil)
            return
        }
        
        if CLLocationManager.authorizationStatus() == .notDetermined || CLLocationManager.authorizationStatus() != .authorizedWhenInUse {
            alert("Please go into settings and allow location services.", message: nil, close: "Close", closeHandler: nil)
            return
        }
        
        guard let coordinate = manager.location?.coordinate else {
            alert("Please go into settings and allow location services.", message: nil, close: "Close", closeHandler: nil)
            return
        }
        
        self.view.endEditing(true)
        
        startLoading(Text.ConnectWiFI.Messages.connecting, #selector(ConnectViewController.cancelTask))
        
        let queue = DispatchQueue.global(qos: DispatchQoS.QoSClass.default)
        
        queue.async { [weak self] in
            
            print("Started executing...")
            
            if let result = self?.executeForResult() {
            
                self?.handleResult(result, coordinate: coordinate)
            }
            
        }
        
    }
    
    fileprivate func handleResult(_ result: ESPTouchResult, coordinate: CLLocationCoordinate2D) {
        
        DispatchQueue.main.async { [weak self] in
            
            self?.stopLoading()
            
            if result.isSuc {
                
                AirService.registerDevice(result.bssid, lat: coordinate.latitude, long: coordinate.longitude, completion: { (success, message, deviceID) in
                    
                    if success {
                        
                        if let id = deviceID {
                            print(id)
//                            UserManager.sharedInstance.associateDeviceWithUser(id)
                            
                            self?.alert(result.description, message: nil, close: "OK", closeHandler: { action in
                                self?.navigationController?.pushViewController(DeviceViewController(), animated: true)
                            })
                        }else {
                            self?.alert(Text.ConnectIntro.Messages.alertMsg, message: nil, close: Text.ConnectIntro.Messages.alertBtn, closeHandler: nil)   
                        }
                        
                    }else {
                        self?.alert(Text.ConnectIntro.Messages.alertMsg, message: nil, close: Text.ConnectIntro.Messages.alertBtn, closeHandler: nil)
                    }
                    
                })
                
            }else {
                self?.alert(Text.ConnectIntro.Messages.alertMsg, message: nil, close: Text.ConnectIntro.Messages.alertBtn, closeHandler: nil)
            }
        }
    }
}

extension ConnectViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellType = data[(indexPath as NSIndexPath).row]
        
        if cellType == CellType.bigBtn {
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BigButtonTableViewCell
            
            cell.button.addTarget(self, action: #selector(ConnectViewController.continuePressed), for: .touchUpInside)
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as InputTableViewCell
        
        cell.configure(cellType)
        
        if cellType == .wiFiPassword {
            cell.textField.addTarget(self, action: #selector(ConnectViewController.textFieldDidChange(_:)), for: .editingChanged)
            cell.textField.delegate = self
        }
        
        cell.addBorder()
        
        return cell
        
    }
}

extension ConnectViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if CLLocationManager.locationServicesEnabled() {
            manager.startUpdatingLocation()
        }
    }
}

extension ConnectViewController: UITextFieldDelegate {
    func textFieldDidChange(_ textfield:UITextField) {

        password = textfield.text

        print(password as Any)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

extension ConnectViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Styles.cellHeight(data[(indexPath as NSIndexPath).row])
    }
}

extension ConnectViewController {
    
    fileprivate func executeForResult() -> ESPTouchResult? {

        task = ESPTouchTask(apSsid: UIDevice.SSID, andApBssid: UIDevice.BSSID, andApPwd: password, andIsSsidHiden: false)
        
        return task?.executeForResult()
        
    }
    
    func cancelTask() {
        task?.interrupt()
    }
}


