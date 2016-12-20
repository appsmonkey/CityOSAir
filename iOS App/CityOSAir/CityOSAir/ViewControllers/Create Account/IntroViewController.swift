//
//  IntroViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 25/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController {
    
    let headerLabel: UILabel = {
        let lbl = UILabel()
        
        lbl.text = Text.CreateIntro.topText
        lbl.font = Styles.Intro.HeaderText.font
        lbl.textColor = Styles.Intro.HeaderText.tintColor
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        
        return lbl
    }()
    
    let startBtn: UIButton = {
        let btn = UIButton()
        
        btn.setTitle(Text.CreateIntro.Buttons.start, for: UIControlState())
        btn.backgroundColor = Styles.BigButton.backgroundColor
        btn.tintColor = Styles.BigButton.tintColor
        btn.titleLabel?.font = Styles.BigButton.font
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        
        startBtn.addTarget(self, action: #selector(IntroViewController.getStartedClicked), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }
    
    fileprivate func setUI() {
        
        let backgroundImage = UIImageView(image: UIImage(named: "startbg"))
        backgroundImage.contentMode = .scaleAspectFill
        
        view.addSubview(backgroundImage)
        view.addSubview(headerLabel)
        view.addSubview(startBtn)
        
        view.addConstraintsWithFormat("V:|[v0]|", views: backgroundImage)
        view.addConstraintsWithFormat("V:[v0]|", views: startBtn)

        view.addConstraintsWithFormat("H:|[v0]|", views: backgroundImage)
        view.addConstraintsWithFormat("H:|[v0]|", views: headerLabel)
        view.addConstraintsWithFormat("H:|[v0]|", views: startBtn)
        
        view.addConstraint(NSLayoutConstraint(item: startBtn, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.1, constant: 0))
        
        let margin = 30 * getMargin()
        
        view.addConstraint(NSLayoutConstraint(item: headerLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: margin))

    }
    
    func getStartedClicked() {
        self.navigationController?.pushViewController(CreateAccountViewController(), animated: true)
    }
    
    fileprivate func getMargin() -> CGFloat {
        
        if UIDevice.isDeviceWithHeight480() {
            return 1;
        }else if UIDevice.isDeviceWithHeight568() {
            return 1.5;
        }else if UIDevice.isDeviceWithHeight667() {
            return 1.7;
        }else{
            return 2;
        }
    }
}
