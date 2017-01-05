//
//  AQIViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/12/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

enum AQIType {
    case pm10
    case pm25
}

class AQIViewController: UIViewController {

    var aqiType: AQIType = AQIType.pm10
    
    lazy var backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "backbtn"), for: UIControlState())
        btn.tintColor = UIColor.gray
        btn.addTarget(self, action: #selector(AQIViewController.dimissVC), for: .touchUpInside)
        return btn
    }()
    
    let header: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Detail.HeaderText.font
        lbl.textColor = Styles.Detail.HeaderText.tintColor
        return lbl
    }()
    
    let subtitle: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Detail.SubtitleText.font
        lbl.textColor = Styles.Detail.SubtitleText.tintColor
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        view.isHidden = true
        return view
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(AQITableViewCell.self, forCellReuseIdentifier: "Cell")
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.separatorStyle = .none
        table.bounces = false
        table.rowHeight = UITableViewAutomaticDimension
        table.estimatedRowHeight = 400
        return table
    }()

    let aqis = [AQI.great, AQI.ok, AQI.sensitive, AQI.unhealthy, AQI.veryUnhealthy, AQI.hazardous]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if aqiType == .pm10 {
            header.text = Text.PM10.title
            subtitle.text = Text.PM10.subtitle
        }else {
            
            let attributedTitle = NSMutableAttributedString(string: Text.PM25.title, attributes: [NSFontAttributeName:Styles.Detail.HeaderText.font])
            
            attributedTitle.setAttributes([NSFontAttributeName:Styles.Detail.HeaderText.subscriptFont,NSBaselineOffsetAttributeName:-10], range: NSRange(location:2,length:3))
            
            header.attributedText = attributedTitle
            
            let attributedSubtitle = NSMutableAttributedString(string: Text.PM25.subtitle, attributes: [NSFontAttributeName:Styles.Detail.SubtitleText.font])
            
            attributedSubtitle.setAttributes([NSFontAttributeName:Styles.Detail.SubtitleText.subscriptFont,NSBaselineOffsetAttributeName:-5], range: NSRange(location:16,length:3))
            
            subtitle.attributedText = attributedSubtitle
        }
        
        self.view.backgroundColor = .white
        
        setUI()
    }
    
    fileprivate func setUI() {
        
        view.addSubview(header)
        view.addSubview(subtitle)
        view.addSubview(backBtn)
        view.addSubview(tableView)
        view.addSubview(lineView)
        
        view.addConstraintsWithFormat("V:|-30-[v0]", views: backBtn)
        view.addConstraintsWithFormat("H:|-15-[v0]", views: backBtn)
        
        view.addConstraintsWithFormat("V:[v0]-10-[v1]-8-[v2(0.5)][v3]|", views: header, subtitle, lineView, tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: lineView)
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        view.addConstraintsWithFormat("H:|-20-[v0]-20-|", views: subtitle)

        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerY, relatedBy: .equal, toItem: backBtn, attribute: .centerY, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: subtitle, attribute: .centerX, relatedBy: .equal, toItem: header, attribute: .centerX, multiplier: 1, constant: 0))
    }
    
    func dimissVC() {
        self.dismiss(animated: true)
    }
}

extension AQIViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return aqis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! AQITableViewCell
        
        let aqi = aqis[indexPath.row]
        
        cell.configure(aqi: aqi, type: aqiType)
        
        return cell
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if (scrollView.contentOffset.y == 0) {
            lineView.isHidden = true
        }else {
            lineView.isHidden = false
        }
    }
}
