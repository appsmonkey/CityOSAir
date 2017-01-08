//
//  SettingsViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit
import UserNotifications

class SettingsViewController: UIViewController {

    lazy var backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "backbtn"), for: UIControlState())
        btn.tintColor = UIColor.gray
        btn.addTarget(self, action: #selector(SettingsViewController.dimissVC), for: .touchUpInside)
        return btn
    }()
    
    let header: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Detail.HeaderText.font
        lbl.textColor = Styles.Detail.HeaderText.tintColor
        lbl.text = Text.Settings.title
        return lbl
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        table.register(SettingsTableViewCell.self)
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.separatorColor = UIColor.lightGray.withAlphaComponent(0.7)
        table.alwaysBounceVertical = false
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 200
        return table
    }()
    
    var isPushEnabled = false {
        didSet {
            //doing on main because of
            //willEnterForeground case
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUI()
        
        //used to hide last cell
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 1))
        
        NotificationCenter.default.addObserver(self, selector: #selector(SettingsViewController.isPushAuthorized), name: NSNotification.Name.UIApplicationWillEnterForeground, object: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        isPushAuthorized()
    }
    
    fileprivate func setUI() {
        
        view.addSubview(header)
        view.addSubview(backBtn)
        view.addSubview(tableView)
        
        let lineView = UIView()
        lineView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        
        view.addSubview(lineView)
        
        view.addConstraintsWithFormat("V:|-30-[v0(30)]", views: backBtn)
        view.addConstraintsWithFormat("H:|-15-[v0(30)]", views: backBtn)
        
        view.addConstraintsWithFormat("V:[v0]-[v1(0.5)][v2]|", views: header, lineView, tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: lineView)

        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerY, relatedBy: .equal, toItem: backBtn, attribute: .centerY, multiplier: 1, constant: 0))
    }
    
    func dimissVC() {
        self.dismiss(animated: true)
    }
    
    fileprivate func handleLoginLogout() {
        
        if let _ = UserManager.sharedInstance.getLoggedInUser() {
        
            UserManager.sharedInstance.logoutUser()
            
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            
            appDelegate.window?.rootViewController = UINavigationController(rootViewController: LogInViewController())
            
        }else {
            
            let loginVC = LogInViewController()
            
            loginVC.shouldClose = true
            
            self.present(UINavigationController(rootViewController: loginVC) , animated: true)
        }
    }
    
    func isPushAuthorized() {
        if #available(iOS 10.0, *) {
            let center = UNUserNotificationCenter.current()
            
            center.getNotificationSettings { (settings) in
                if(settings.authorizationStatus == .authorized)
                {
                    self.isPushEnabled = true
                }
                else
                {
                    self.isPushEnabled = false
                }
            }
            
        } else {
            isPushEnabled = UIApplication.shared.isRegisteredForRemoteNotifications
        }
    }
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell!
        
        switch (indexPath as NSIndexPath).row {
        
        case 0:
            cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as SettingsTableViewCell
            (cell as! SettingsTableViewCell).configure(rightDetailText: isPushEnabled ? "On" : "Off")
            (cell as! SettingsTableViewCell).titleLabel.text = Text.Settings.notificationsTitle
            (cell as! SettingsTableViewCell).subtitleLabel.text = Text.Settings.notificationsDetail
            return cell
        case 1:
            cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as SettingsTableViewCell
            (cell as! SettingsTableViewCell).configure()
            (cell as! SettingsTableViewCell).titleLabel.text = Text.Settings.notifyMe
            (cell as! SettingsTableViewCell).subtitleLabel.text = "Good, Moderate, Unhealthy for sensitive, Unhealthy, Very unhelathy, Hazardous"
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

            cell.textLabel?.textColor = Styles.SmallButton.tintColor
            cell.accessoryType = .none
            
            if let _ = UserManager.sharedInstance.getLoggedInUser() {
                cell.textLabel?.text = Text.Settings.logout
            }else {
                cell.textLabel?.text = Text.Settings.login
            }
        default:
            break
        }
        
        cell.textLabel?.font = Styles.SmallButton.font

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch (indexPath as NSIndexPath).row {
            
        case 0:
            UIApplication.shared.openURL(NSURL(string: UIApplicationOpenSettingsURLString)! as URL)
        case 1:
            print("Notif")
        case 2:
            handleLoginLogout()
        default:
            break
        }
    }

}
