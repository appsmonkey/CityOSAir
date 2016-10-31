//
//  GraphViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class GraphViewController: UIViewController {
    
    let closeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "closewhite"), for: UIControlState())
        btn.tintColor = Styles.Colors.white
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
    
    let subtitle: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Graph.SubtitleText.font
        lbl.textColor = Styles.Graph.SubtitleText.tintColor
        lbl.textAlignment = .center
        return lbl
    }()
    
    let readingLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Graph.ReadingLabel.font
        lbl.textColor = Styles.Graph.ReadingLabel.tintColor
        lbl.textAlignment = .center
        return lbl
    }()
    
    var chartView: ChartView!
    
    var reading: Reading!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let readingType = reading.readingType {
            header.text = readingType.identifier
            subtitle.text = "(\(readingType.unitNotation))"
        }
        
        readingLabel.text = "\(reading.value)"
        
        chartView = ChartView()
        
        if let deviceID = UserManager.sharedInstance.getLoggedInUser()!.deviceId.value, let sensorID = reading.readingType?.rawValue {
            AirService.readingsForSensor(deviceID, sensorID: sensorID) { [weak self] (success, message, chartPoints) in
                if success {
                    if let chartPoints = chartPoints{
                        
                        let x = chartPoints.map { $0.xLabel }
                        let values = chartPoints.map { $0.value }
                        
                        self?.chartView.setChart(dataPoints: x, values: values)
                    }
                }
            }
        }
        
        view.addGradientAsBackground()
        
        setUI()
        
        closeBtn.addTarget(self, action: #selector(GraphViewController.closePressed), for: .touchUpInside)
    }
    
    fileprivate func setUI() {
        
        view.addSubview(closeBtn)
        view.addSubview(header)
        view.addSubview(subtitle)
        view.addSubview(readingLabel)
        view.addSubview(chartView)
        
        view.addConstraintsWithFormat("V:|-25-[v0]", views: closeBtn)
        view.addConstraintsWithFormat("H:[v0]-15-|", views: closeBtn, header)
        
        view.addConstraintsWithFormat("V:[v0][v1]-10-[v2]-10-[v3]|", views: header, subtitle, readingLabel, chartView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: chartView)

        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerY, relatedBy: .equal, toItem: closeBtn, attribute: .centerY, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: subtitle, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: readingLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))

    }
    
    func closePressed() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }

}
