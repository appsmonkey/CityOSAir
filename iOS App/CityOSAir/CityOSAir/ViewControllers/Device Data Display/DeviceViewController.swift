//
//  DeviceViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class DeviceViewController: UIViewController {

    lazy var tableView: UITableView = {
        let table = UITableView()
        
        table.dataSource = self
        table.delegate = self
        table.register(ReadingTableViewCell.self)
        table.tableFooterView = UIView()
        table.alwaysBounceVertical = false
        table.backgroundColor = UIColor.clear
        table.separatorColor = UIColor.white.withAlphaComponent(0.4)
        
        return table
    }()
    
    let settingsBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "settings"), for: UIControlState())
        btn.tintColor = Styles.Colors.white
        return btn
    }()
    
    let header: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Detail.HeaderText.font
        lbl.textColor = Styles.Detail.HeaderText.tintColor
        lbl.text = Text.Readings.title
        return lbl
    }()
    
    let timeStamp: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Detail.SubtitleText.font
        lbl.textColor = Styles.Detail.SubtitleText.tintColor
        return lbl
    }()
    
    let refreshControl: UIRefreshControl = {
        let refresh = UIRefreshControl()
        refresh.tintColor = UIColor.white
        refresh.attributedTitle = NSAttributedString(string: "Updating data...", attributes: [NSForegroundColorAttributeName: UIColor.white])
        return refresh
    }()
    
    var readingCollection: ReadingCollection? {
        didSet {
            
            self.readings = Array(readingCollection!.realmReadings)
            
            tableView.reloadData()
            
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            
            timeStamp.text = "\(Text.Readings.subtitle) \(formatter.string(from: readingCollection!.lastUpdated))"
        }
    }
    
    var readings: [Reading] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshControl.addTarget(self, action: #selector(DeviceViewController.refresh(_:)), for: .valueChanged)
        
        tableView.addSubview(refreshControl)
        
        view.addGradientAsBackground()
        
        setUI()
        
        settingsBtn.addTarget(self, action: #selector(DeviceViewController.settingsPressed), for: .touchUpInside)
    }
    
    fileprivate func setUI() {
        view.addSubview(settingsBtn)
        view.addSubview(header)
        view.addSubview(timeStamp)
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("V:|-25-[v0]", views: settingsBtn)
        view.addConstraintsWithFormat("H:|-15-[v0]", views: settingsBtn, header)
        
        view.addConstraintsWithFormat("V:[v0]-[v1]-10-[v2]|", views: header, timeStamp, tableView)

        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)


        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerY, relatedBy: .equal, toItem: settingsBtn, attribute: .centerY, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: timeStamp, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        refreshData()
    }
    
    func refreshData() {
        if let deviceID = UserManager.sharedInstance.getLoggedInUser()!.deviceId.value {
            AirService.latestReadings(deviceID) { [weak self] (success, message, readingCollection) in
                if let readingCollection = readingCollection {
                    self?.readingCollection = readingCollection
                }
            }
        }
    }
    
    func refresh(_ sender: UIRefreshControl) {
        sender.isEnabled = false
        if let deviceID = UserManager.sharedInstance.getLoggedInUser()!.deviceId.value {
            AirService.latestReadings(deviceID) { [weak self] (success, message, readingCollection) in

                if let readingCollection = readingCollection {
                    self?.readingCollection = readingCollection
                }
                
                sender.endRefreshing()
                sender.isEnabled = true
            }
        }
    }
    
    func settingsPressed() {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.pushViewController(SettingsViewController(), animated: true)
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
}

extension DeviceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return readings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as ReadingTableViewCell
        
        let reading = readings[(indexPath as NSIndexPath).row]
        
        cell.configure(reading.readingType!, value: "\(reading.value)")
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let graphVC = GraphViewController()
        
        graphVC.reading = readings[(indexPath as NSIndexPath).row]
        
        present(graphVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 35 * UIDevice.delta//70
    }
}
