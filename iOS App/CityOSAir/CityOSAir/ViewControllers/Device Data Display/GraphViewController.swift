//
//  GraphViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

enum GraphTimeFrame: Int {
    case live = 0
    case day
    case week
    case month
}

class GraphViewController: UIViewController {
    
    lazy var closeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "close"), for: UIControlState())
        btn.addTarget(self, action: #selector(GraphViewController.closePressed), for: .touchUpInside)
        return btn
    }()
    
    let header: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Graph.HeaderText.font
        lbl.textColor = Styles.Graph.HeaderText.tintColor
        lbl.text = Text.Readings.title
        lbl.textAlignment = .center
        return lbl
    }()
    
    let stateLabel: PaddedLabel = {
        let lbl = PaddedLabel()
        lbl.textAlignment = .center
        lbl.backgroundColor = UIColor.fromHex("f5f5f5")
        lbl.layer.cornerRadius = 3
        lbl.layer.masksToBounds = true
        lbl.isHidden = true
        return lbl
    }()
    
    let readingLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Graph.ReadingLabel.font
        lbl.textColor = Styles.Graph.ReadingLabel.tintColor
        lbl.textAlignment = .center
        lbl.adjustsFontSizeToFitWidth = true
        return lbl
    }()
    
    let notationLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Graph.ReadingLabel.subscriptFont
        lbl.textColor = Styles.Graph.ReadingLabel.subscriptColor
        lbl.textAlignment = .left
        lbl.adjustsFontSizeToFitWidth = true
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = UILayoutConstraintAxis.horizontal
        stack.alignment = .fill
        stack.distribution = .fillEqually
        stack.spacing = 10
        return stack
    }()
    
    var chartView: ChartView!
    
    var reading: Reading!
    
    var deviceId: Int?
    
    var selectedBtn = 0
    
//    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        guard let readingType = reading.readingType else {
            return
        }
        
        header.text = readingType.identifier
        
        if reading.readingType == .pm25 || reading.readingType == .pm10 {
            
            let aqiType = reading.readingType == .pm25 ? AQIType.pm25 : AQIType.pm10
            
            let aqi = AQI.getAQIForTypeWithValue(value: reading.value.roundTo(places: 1), aqiType: aqiType)
            
            stateLabel.text = aqi.message
            stateLabel.textColor = aqi.textColor
            
            stateLabel.isHidden = false
            
            let attributed = NSMutableAttributedString(string: readingType.identifier, attributes: [NSFontAttributeName:Styles.Graph.HeaderText.font])
            
            attributed.setAttributes([NSFontAttributeName:Styles.Graph.HeaderText.subscriptFont,NSBaselineOffsetAttributeName:-5], range: NSRange(location:2,length:readingType == .pm25 ? 3 : 2))
            
            header.attributedText = attributed
            
        }
        
        readingLabel.text = "\(reading.value.roundTo(places: 1))"
        notationLabel.text = readingType.unitNotation
                
        chartView = ChartView(notation: "\(readingType.unitNotation)")
        
//        deviceId = 2147483647

        if let deviceID = deviceId, let sensorID = reading.readingType?.rawValue {
            AirService.readingsForSensor(deviceID, sensorID: sensorID, numberOfReadings: 1000) { [weak self] (success, message, chartPoints) in
                self?.chartView.setChart(chartPoints: chartPoints, readingType: readingType)
            }
        }
        
        setUI()
        
//        timer = Timer.scheduledTimer(timeInterval: 0.1, target:self, selector: #selector(GraphViewController.updateChartLive), userInfo: nil, repeats: true)

    }
    
    fileprivate func setUI() {
        
        for num in 0...3 {
            let btn = UIButton()
            btn.tag = num
            
            btn.backgroundColor = UIColor.clear
            btn.setTitleColor(UIColor.fromHex("ababab"), for: .normal)
            btn.titleLabel?.font = UIFont.appRegularWithSize(7.5)
            btn.layer.cornerRadius = 3
            
            switch num {
            case 0:
                btn.setTitle("Live", for: .normal)
                btn.backgroundColor = UIColor.fromHex("f5f5f5")
            case 1:
                btn.setTitle("Day", for: .normal)
            case 2:
                btn.setTitle("Week", for: .normal)
            case 3:
                btn.setTitle("Month", for: .normal)
            default:
                break
            }
            
            
            
            btn.addTarget(self, action: #selector(GraphViewController.timeFrameChanged(sender:)), for: .touchUpInside)
            
            stackView.addArrangedSubview(btn)
        }
        
        view.addSubview(closeBtn)
        view.addSubview(header)
        view.addSubview(stateLabel)
        view.addSubview(readingLabel)
        view.addSubview(notationLabel)
        view.addSubview(chartView)
        view.addSubview(stackView)
        
        view.addConstraintsWithFormat("V:|-30-[v0(30)]", views: closeBtn)
        view.addConstraintsWithFormat("H:[v0(30)]-15-|", views: closeBtn)
        
        view.addConstraintsWithFormat("V:[v0][v1][v2]-5-[v3]-10-[v4(35)]-10-|", views: header, readingLabel, stateLabel, chartView, stackView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: chartView)
        view.addConstraintsWithFormat("H:|-10-[v0]-10-|", views: stackView)

        
        view.addConstraintsWithFormat("H:[v0(>=100)]", views: stateLabel)


        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .top, relatedBy: .equal, toItem: closeBtn, attribute: .centerY, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: stateLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: readingLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))

        notationLabel.leadingAnchor.constraint(equalTo: readingLabel.trailingAnchor).isActive = true
        notationLabel.lastBaselineAnchor.constraint(equalTo: readingLabel.lastBaselineAnchor).isActive = true

    }
    
    func timeFrameChanged(sender: UIButton) {
        
        if selectedBtn == sender.tag {
            return
        }
        
        selectedBtn = sender.tag
        
        for btn in stackView.arrangedSubviews {
            btn.backgroundColor = .clear
        }
        
        UIView.animate(withDuration: 0.5) {
            sender.backgroundColor = UIColor.fromHex("f5f5f5")
        }
        
        if let deviceID = deviceId, let readingType = reading.readingType {
            AirService.readingsForSensor(deviceID, sensorID: 6) { [weak self] (success, message, chartPoints) in
                self?.chartView.setChart(chartPoints: chartPoints, readingType: .pm25)
            }
        }

    }
    
    func updateChartLive() {
        
//        chartView.updateChart(chartPoints: [point])
    }
    
    func closePressed() {
        self.dismiss(animated: true, completion: nil)
    }

}
