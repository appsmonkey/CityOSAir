//
//  ResetPassViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class ResetPassViewController: UIViewController {
    
    var email: String?
    
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
    
    let data: [CellType] = [.email, .bigBtn]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = Text.ResetPassword.title
        
        setUI()
    }
    
    fileprivate func setUI() {
                
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat("V:|[v0]|", views: tableView)
    }
    
    func continuePressed() {
        self.view.endEditing(true)
        
        if let email = email , !email.isEmpty {
            
            if email.isEmail {
                
                UserManager.sharedInstance.resetPassword(email) { (result) in
                    if result {
                        self.alert(Text.ResetPassword.Messages.alertMsg, message: nil, close: Text.ResetPassword.Messages.alertBtn, closeHandler: { action in
                            _ = self.navigationController?.popViewController(animated: true)
                        })
                    }
                }
                
            }else {
                alert(Text.AccountCreate.Messages.emailError, message: nil, close: "OK", closeHandler: nil)
            }
            
        }else {
            alert("Please check that all fields are filled out", message: nil, close: "Close", closeHandler: nil)
        }
    }
}

extension ResetPassViewController: UITextFieldDelegate {
    
    func textFieldDidChange(_ textfield:UITextField) {
        email = textfield.text
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

extension ResetPassViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if data[(indexPath as NSIndexPath).row] == CellType.bigBtn {
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BigButtonTableViewCell
            
            cell.button.addTarget(self, action: #selector(ResetPassViewController.continuePressed), for: .touchUpInside)
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as InputTableViewCell
        
        cell.configure(data[(indexPath as NSIndexPath).row])
        
        cell.textField.addTarget(self, action: #selector(ResetPassViewController.textFieldDidChange(_:)), for: .editingChanged)
        cell.textField.delegate = self
        
        cell.addBorder()
        
        return cell
        
    }
}

extension ResetPassViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Styles.cellHeight(data[(indexPath as NSIndexPath).row])
    }
}
