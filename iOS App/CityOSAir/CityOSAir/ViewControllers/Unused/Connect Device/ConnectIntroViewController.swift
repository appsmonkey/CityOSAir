//
//  ConnectIntroViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 28/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class ConnectIntroViewController: UIViewController {
    
    let headerLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = Text.ConnectIntro.topText
        lbl.font = Styles.Intro.HeaderText.font
        lbl.textColor = Styles.Intro.HeaderText.tintColor
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        
        return lbl
    }()
    
    let subtitleLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = Text.ConnectIntro.contentText
        lbl.font = Styles.Intro.SubtitleText.font
        lbl.textColor = Styles.Intro.SubtitleText.tintColor
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        
        return lbl
    }()
    
    let logoutBtn: UIButton = {
        let btn = UIButton()
        
        btn.setTitle(Text.ConnectIntro.Buttons.logout, for: UIControlState())
        btn.setTitleColor(Styles.SmallButton.tintColor, for: UIControlState())
        btn.titleLabel?.font = Styles.SmallButton.font
        
        return btn
    }()
    
    let continueBtn: UIButton = {
        let btn = UIButton()
        
        btn.setTitle(Text.Buttons.continueBtn, for: UIControlState())
        btn.backgroundColor = Styles.BigButton.backgroundColor
        btn.tintColor = Styles.BigButton.tintColor
        btn.titleLabel?.font = Styles.BigButton.font
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
        continueBtn.addTarget(self, action: #selector(ConnectIntroViewController.continueClicked), for: .touchUpInside)
        logoutBtn.addTarget(self, action: #selector(ConnectIntroViewController.logoutClicked), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    fileprivate func setUI() {
        
        let backgroundImage = UIImageView(image: UIImage(named: "connectbg"))
        backgroundImage.contentMode = .scaleAspectFill
        
        view.addSubview(backgroundImage)
        view.addSubview(logoutBtn)
        view.addSubview(headerLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(continueBtn)
        
        view.addConstraintsWithFormat("V:|[v0]|", views: backgroundImage)
        view.addConstraintsWithFormat("V:|-10-[v0]-10-[v1]-10-[v2]", views: logoutBtn, headerLabel, subtitleLabel)
        view.addConstraintsWithFormat("V:[v0]|", views: continueBtn)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: backgroundImage)
        view.addConstraintsWithFormat("H:|-10-[v0]", views: logoutBtn)
        view.addConstraintsWithFormat("H:|[v0]|", views: headerLabel)
        view.addConstraintsWithFormat("H:|[v0]|", views: subtitleLabel)
        view.addConstraintsWithFormat("H:|[v0]|", views: continueBtn)
        
        view.addConstraint(NSLayoutConstraint(item: continueBtn, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.1, constant: 0))
        
    }
    
    func continueClicked() {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.pushViewController(ConnectViewController(), animated: true)
    }
    
    func logoutClicked() {
        
        UserManager.sharedInstance.logoutUser()
        _ = self.navigationController?.popToRootViewController(animated: true)
    }
}
