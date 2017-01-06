//
//  SettingsViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

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
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.separatorColor = UIColor.lightGray.withAlphaComponent(0.7)
        table.alwaysBounceVertical = false
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        setUI()
        
        //used to hide last cell
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 1))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
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
}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
//        cell.addBorder()
        
        cell.textLabel?.font = Styles.SmallButton.font
        
        switch (indexPath as NSIndexPath).row {
        
        case 0:
            cell.textLabel?.textColor = Styles.FormCell.inputColor
            cell.accessoryType = .none
            return cell
        case 1:
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
            cell.textLabel?.text = Text.Settings.notificationsTitle
            cell.detailTextLabel?.text = Text.Settings.notificationsDetail
        case 1:
            if let _ = UserManager.sharedInstance.getLoggedInUser() {
                cell.textLabel?.text = Text.Settings.logout
            }else {
                cell.textLabel?.text = Text.Settings.login
            }
        default:
            cell.textLabel?.text = ""
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch (indexPath as NSIndexPath).row {
            
        case 0:
//            handleWifi()
            print("Notif Clicked")
        case 1:
            handleLoginLogout()
        default:
            break
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Styles.cellHeight(CellType.email)
    }
}
