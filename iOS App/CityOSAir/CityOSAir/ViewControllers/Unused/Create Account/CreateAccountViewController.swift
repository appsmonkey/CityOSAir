//
//  CreateAccountViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    var email: String?
    var password: String?
    var confirmPassword: String?
    
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
    
    let existingAccBtn: UIButton = {
        let btn = UIButton()
        
        btn.setTitle(Text.AccountCreate.Buttons.existingAccBtn, for: UIControlState())
        btn.setTitleColor(Styles.SmallButton.tintColor, for: UIControlState())
        btn.titleLabel?.font = Styles.SmallButton.font
        
        return btn
    }()
    
    let data: [CellType] = [.email, .password, .confirmPassword, .bigBtn]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideKeyboardWhenTappedAround()
        
        self.title = Text.AccountCreate.title
        
        setUI()
        
        existingAccBtn.addTarget(self, action: #selector(CreateAccountViewController.existingAccPressed), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = false

    }
    
    fileprivate func setUI() {
        
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        view.addSubview(existingAccBtn)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat("V:|[v0][v1]-15-|", views: tableView, existingAccBtn)
        
        view.addConstraint(NSLayoutConstraint(item: existingAccBtn, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
    }
    
    func continuePressed() {
        self.view.endEditing(true)
        
        if let email = email, let password = password, let confirmPassword = confirmPassword , !email.isEmpty && !password.isEmpty && !confirmPassword.isEmpty {
            
            if email.isEmail {
                
                if password == confirmPassword {
                
                    startLoading(Text.AccountCreate.Messages.loadingMsg)
                    
                    UserManager.sharedInstance.registerUser(email, password: password, confirmPassword: confirmPassword, completion: { (message, success) in
                        self.stopLoading()
                        
                        if success {
                            self.navigationController?.pushViewController(ConnectIntroViewController(), animated: true)
                        }
                    })
                    
                }else {
                    alert(Text.AccountCreate.Messages.passwordError, message: nil, close: "OK", closeHandler: nil)
                }
                
            }else {
                alert(Text.AccountCreate.Messages.emailError, message: nil, close: "OK", closeHandler: nil)
            }
            
        }else {
            alert("Please check that all fields are filled out", message: nil, close: "Close", closeHandler: nil)
        }
    }
    
    func existingAccPressed() {
        self.navigationController?.pushViewController(LogInViewController(), animated: true)
    }
}

extension CreateAccountViewController: UITextFieldDelegate {
    func textFieldDidChange(_ textfield:UITextField) {
        
        switch textfield.tag {
        case 1:
            email = textfield.text
        case 2:
            password = textfield.text
        case 3:
            confirmPassword = textfield.text
        default:
            return
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}

extension CreateAccountViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellType = data[(indexPath as NSIndexPath).row]
        
        if cellType == CellType.bigBtn {
        
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as BigButtonTableViewCell
            
            cell.button.addTarget(self, action: #selector(CreateAccountViewController.continuePressed), for: .touchUpInside)
            
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
        case .confirmPassword:
            cell.textField.tag = 3
        default:
            break
        }
        
        cell.textField.addTarget(self, action: #selector(CreateAccountViewController.textFieldDidChange(_:)), for: .editingChanged)
        cell.textField.delegate = self
        
        return cell
        
    }
}

extension CreateAccountViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Styles.cellHeight(data[(indexPath as NSIndexPath).row])
    }
}
