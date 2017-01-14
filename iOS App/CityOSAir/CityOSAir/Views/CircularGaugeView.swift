//
//  CircularGaugeView.swift
//  CityOSAir
//
//  Created by Andrej Saric on 05/01/2017.
//  Copyright © 2017 CityOS. All rights reserved.
//

import UIKit

struct GaugeConfig {
    var progressColor: UIColor
    var maxValue: Double
    var progressValue: Double
    var ribbonText: String
    var ribbonImage: UIImage
    var centerImage: UIImage
}

public class CircularGaugeView: UIView {
    
    var progress: KDCircularProgress!
    
    var value: Double = 0 {
        didSet {
            setProgress(value: value)
        }
    }
    
    var maxValue: Double = 300.0
    
    fileprivate func setProgress(value: Double) {
        
        var value = value
        
        if value > maxValue { value = maxValue }
        
        let angle = calculateProgressFor(value: value)
        
        progress.animate(fromAngle: 0, toAngle: angle, duration: 1.0, completion: nil)
        
    }
    
    fileprivate func calculateProgressFor(value: Double) -> Double {
        
        let percent = (value / maxValue) * 100
        
        let valueFromPercent = (304 / 100) * percent
        
        return valueFromPercent
    }
    
    var msgLabel: UILabel = {
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .white
        lbl.textAlignment = .center
        lbl.font = UIFont.appRegularWithSize(7.3)
        return lbl
    }()
    
    var centerImageView: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.contentMode = .scaleAspectFit
        return imgV
    }()
    
    var ribbonImageView: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.contentMode = .scaleAspectFit
        return imgV
    }()
    
    var centerImage: UIImage? {
        didSet {
            UIView.transition(with: self.centerImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.centerImageView.image = self.centerImage
            }, completion: nil)
        }
    }
    
    var ribbonImage: UIImage? {
        didSet {
            UIView.transition(with: self.ribbonImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
                self.ribbonImageView.image = self.ribbonImage
            }, completion: nil)
        }
    }
    
    var ribbonText: String? {
        didSet {
            let attributedRibbon = NSMutableAttributedString(string: ribbonText!)
            
            attributedRibbon.addAttribute(NSKernAttributeName, value: 0.5, range: NSMakeRange(0, attributedRibbon.length))
            
            msgLabel.attributedText = attributedRibbon
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        progress = KDCircularProgress(frame: frame)
        progress.trackColor = UIColor.fromHex("f5f5f5")
        progress.progressThickness = 0.5
        progress.trackThickness = 0.5
        progress.clockwise = true
        progress.gradientRotateSpeed = 0
        progress.roundedCorners = true
        progress.glowMode = .noGlow
        progress.glowAmount = 0
        self.addSubview(progress)
        
        //center image
        progress.addSubview(centerImageView)
        
        centerImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        centerImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        centerImageView.heightAnchor.constraint(equalTo: progress.heightAnchor, multiplier: 0.4, constant: 0).isActive = true
        centerImageView.widthAnchor.constraint(equalTo: centerImageView.heightAnchor).isActive = true
        
        //ribbon
        progress.addSubview(ribbonImageView)
        
        ribbonImageView.bottomAnchor.constraint(equalTo: progress.bottomAnchor, constant: -5).isActive = true
        ribbonImageView.leadingAnchor.constraint(equalTo: progress.leadingAnchor, constant: 4).isActive = true
        ribbonImageView.trailingAnchor.constraint(equalTo: progress.trailingAnchor, constant: -3).isActive = true
        
        ribbonImageView.addSubview(msgLabel)
        
        msgLabel.topAnchor.constraint(equalTo: ribbonImageView.topAnchor, constant: 10).isActive = true
        msgLabel.bottomAnchor.constraint(equalTo: ribbonImageView.bottomAnchor).isActive = true
        msgLabel.leadingAnchor.constraint(equalTo: ribbonImageView.leadingAnchor).isActive = true
        msgLabel.trailingAnchor.constraint(equalTo: ribbonImageView.trailingAnchor).isActive = true
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureWith(config: GaugeConfig) {
        progress.set(colors: config.progressColor)
        self.maxValue = config.maxValue
        self.value = config.progressValue
        self.ribbonText = config.ribbonText
        self.ribbonImage = config.ribbonImage
        self.centerImage = config.centerImage
    }
    
    func refreshToInitial() {
        self.value = 0
        self.ribbonText = ""
        self.ribbonImage = nil
        self.centerImage = nil
    }
    
}

