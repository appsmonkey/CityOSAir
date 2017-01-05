//
//  BigButtonSecondaryTableViewCell.swift
//  CityOSAir
//
//  Created by Andrej Saric on 27/12/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class BigButtonSecondaryTableViewCell: UITableViewCell {
    
    let button: UIButton = {
        let btn = UIButton()
        
        btn.setTitle(Text.Buttons.noDeviceBtn, for: UIControlState())
        btn.backgroundColor = Styles.BigButtonSecondary.backgroundColor
        btn.tintColor = Styles.BigButtonSecondary.tintColor
        btn.titleLabel?.font = Styles.BigButtonSecondary.font
        
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
        
        contentView.addConstraintsWithFormat("V:|[v0]-40-|", views: button)
        contentView.addConstraintsWithFormat("H:|-20-[v0]-20-|", views: button)
        
    }
    
}

extension BigButtonSecondaryTableViewCell: Reusable {}
