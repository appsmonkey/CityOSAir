//
//  SettingsViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.separatorStyle = .none
        table.alwaysBounceVertical = false
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = Text.MyDevice.title
        
        setUI()
    }
    
    fileprivate func setUI() {
        
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat("V:|[v0]|", views: tableView)
    }
    
    fileprivate func handleWifi() {
        self.navigationController?.pushViewController(ConnectViewController(), animated: true)
    }
    
    fileprivate func handleForget() {
        if let user = UserManager.sharedInstance.getLoggedInUser() {
            if let deviceID = user.deviceId.value {
                AirService.forgetDevice(deviceID, completion: { [weak self] (success, message) in
                    if success {
                        UserManager.sharedInstance.deAssociateDeviceWithUser()
                        self?.navigationController?.pushViewController(ConnectIntroViewController(), animated: true)
                    }
                })
            }
        }
    }
    
    fileprivate func handleLogout() {
        UserManager.sharedInstance.logoutUser()
        _ = self.navigationController?.popToRootViewController(animated: true)
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.addBorder()
        
        cell.textLabel?.font = Styles.SmallButton.font
        
        switch (indexPath as NSIndexPath).row {
        
        case 0:
            cell.textLabel?.textColor = Styles.FormCell.inputColor
            cell.accessoryType = .disclosureIndicator
        case 1,2:
            cell.textLabel?.textColor = Styles.SmallButton.tintColor
            cell.accessoryType = .none
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        switch (indexPath as NSIndexPath).row {
        
        case 0:
            cell.textLabel?.text = Text.MyDevice.wifi
        case 1:
            cell.textLabel?.text = Text.MyDevice.forget
        case 2:
            cell.textLabel?.text = Text.MyDevice.logout
        default:
            cell.textLabel?.text = ""
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch (indexPath as NSIndexPath).row {
            
        case 0:
            handleWifi()
        case 1:
            handleForget()
        case 2:
            handleLogout()
        default:
            break
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Styles.cellHeight(CellType.email)
    }
}
