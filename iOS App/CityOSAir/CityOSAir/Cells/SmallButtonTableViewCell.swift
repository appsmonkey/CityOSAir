//
//  SmallButtonTableViewCell.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class SmallButtonTableViewCell: UITableViewCell {

    let button: UIButton = {
        let btn = UIButton()
        
        btn.setTitle(Text.LogIn.Buttons.forgotPassword, for: UIControlState())
        btn.setTitleColor(Styles.SmallButton.tintColor, for: UIControlState())
        btn.titleLabel?.font = Styles.SmallButton.font
        
        return btn
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
    
    fileprivate func initialize() {
        
        selectionStyle = .none
        
        contentView.addSubview(button)
        
        contentView.addConstraintsWithFormat("V:|-10-[v0]-10-|", views: button)
     
        contentView.addConstraint(NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: contentView, attribute: .centerX, multiplier: 1, constant: 0))
    }
}

extension SmallButtonTableViewCell: Reusable {}
