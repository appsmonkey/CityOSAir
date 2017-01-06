//
//  LogInViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    var email: String?
    var password: String?
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        
        table.dataSource = self
        table.delegate = self
        table.register(InputTableViewCell.self)
        table.register(BigButtonTableViewCell.self)
        table.register(BigButtonSecondaryTableViewCell.self)
        table.register(SmallButtonTableViewCell.self)
        table.tableFooterView = UIView()
        table.separatorStyle = .none
        table.alwaysBounceVertical = false
        
        return table
    }()
    
    let data: [CellType] = [.email, .password, .smallBtn, .bigBtn, .bigBtnSecondary]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
        
        self.title = Text.LogIn.title
        
        setUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = false
        
    }
    
    fileprivate func setUI() {
                
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat("V:|[v0]|", views: tableView)
    }
    
    func continuePressed() {
        self.view.endEditing(true)
        
        if let email = email, let password = password , !email.isEmpty && !password.isEmpty {
            
            if email.isEmail {
                
                startLoading(Text.LogIn.Messages.loadingMsg)
                
                UserManager.sharedInstance.logingWithCredentials(email, password: password) { [weak self] (result, hasDevice, message) in
                    
                    self?.stopLoading()
                    
                    if result != nil {
                        self?.toDeviceController()
                    }else {
                        self?.alert(message, message: nil, close: "Close", closeHandler: nil)
                    }
                }
            }else {
                alert(Text.AccountCreate.Messages.emailError, message: nil, close: "OK", closeHandler: nil)
            }
        
        }else {
            alert("Please check that all fields are filled out", message: nil, close: "Close", closeHandler: nil)
        }
    }
    
    func continueWithoutLoginPressed() {
        toDeviceController()
    }
    
    func forgotPasswordPressed() {
        self.view.endEditing(true)
        self.navigationController?.pushViewController(ResetPassViewController(), animated: true)
    }
    
    fileprivate func toDeviceController() {
        
        let deviceVC = DeviceInfoViewController()
        
        deviceVC.device = Cache.sharedCache.getDeviceCollection()?.first
        
        let slideMenuViewController = SlideMenuController(mainViewController: deviceVC, leftMenuViewController: MenuViewController())
        SlideMenuOptions.contentViewScale = 1
        SlideMenuOptions.hideStatusBar = false
        
        present(slideMenuViewController, animated: true, completion: nil)

    }
}

extension LogInViewController: UITextFieldDelegate {
    func textFieldDidChange(_ textfield:UITextField) {
        
        switch textfield.tag {
        case 1:
            email = textfield.text
        case 2:
            password = textfield.text
        default:
            return
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

extension LogInViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellType = data[(indexPath as NSIndexPath).row]
        
        if cellType == CellType.bigBtn {
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BigButtonTableViewCell
            
            cell.button.addTarget(self, action: #selector(LogInViewController.continuePressed), for: .touchUpInside)
            
            return cell
        }
        
        if cellType == CellType.bigBtnSecondary {
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BigButtonSecondaryTableViewCell
            
            cell.button.addTarget(self, action: #selector(LogInViewController.continueWithoutLoginPressed), for: .touchUpInside)
            
            return cell
        }
        
        if cellType == CellType.smallBtn {
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as SmallButtonTableViewCell
            
            cell.button.addTarget(self, action: #selector(LogInViewController.forgotPasswordPressed), for: .touchUpInside)
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as InputTableViewCell
        
        cell.configure(cellType)
        
        cell.addBorder()
        
        switch cellType {
        case .email:
            cell.textField.tag = 1
        case .password:
            cell.textField.tag = 2
        default:
            break
        }
        
        cell.textField.addTarget(self, action: #selector(LogInViewController.textFieldDidChange(_:)), for: .editingChanged)
        cell.textField.delegate = self
        
        return cell
        
    }
}

extension LogInViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Styles.cellHeight(data[(indexPath as NSIndexPath).row])
    }
}

