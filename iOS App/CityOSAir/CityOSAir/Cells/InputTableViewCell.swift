//
//  InputTableViewCell.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class InputTableViewCell: UITableViewCell {
    
    let textField: UITextField = {
        let txtField = UITextField()
        
        txtField.font = Styles.FormCell.font
        txtField.textColor = Styles.FormCell.inputColor
        txtField.borderStyle = .none
        txtField.backgroundColor = .clear
        
        let spacerView = UIView(frame:CGRect(x:0, y:0, width:15, height:10))
        txtField.leftViewMode = UITextFieldViewMode.always
        txtField.leftView = spacerView
        
        return txtField
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initialize()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(_ type: CellType) {
        
        var placeholder: String!
        
        switch type {
            
        case .confirmPassword:
            placeholder = Text.Placeholders.confirmPassword
            textField.isSecureTextEntry = true
        case .email:
            placeholder = Text.Placeholders.email
            textField.keyboardType = .emailAddress
        case .password:
            placeholder = Text.Placeholders.password
            textField.isSecureTextEntry = true
        case .wiFiPassword:
            placeholder = Text.Placeholders.wifiPassword
            textField.isSecureTextEntry = true
        case .wiFiName:
            
            textField.isEnabled = false
            
            if let ssid = UIDevice.SSID {
                textField.text = ssid
                return
            }
            
            textField.text = "Unable to retrieve SSID"
            return
            
        default:
            placeholder = "Input text"
        }
        
        let str = NSAttributedString(string: placeholder, attributes: [NSForegroundColorAttributeName:Styles.FormCell.placeholderColor])
        
        textField.attributedPlaceholder = str
    }
    
    fileprivate func initialize() {
        
        selectionStyle = .none
        
        contentView.addSubview(textField)
        
        contentView.addConstraintsWithFormat("V:|[v0]|", views: textField)
        contentView.addConstraintsWithFormat("H:|[v0]|", views: textField)
        
    }
}

extension InputTableViewCell: Reusable {}
