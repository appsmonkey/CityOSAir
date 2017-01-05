//
//  DeviceInfoViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 27/12/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class DeviceInfoViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        
        table.dataSource = self
        table.delegate = self
        table.register(ReadingTableViewCell.self)
        table.tableFooterView = UIView()
        table.alwaysBounceVertical = false
        table.backgroundColor = .clear
        table.separatorColor = UIColor.black.withAlphaComponent(0.4)
        
        return table
    }()
    
    let menuBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "menu"), for: UIControlState())
        btn.tintColor = UIColor.gray//Styles.Colors.white
        return btn
    }()
    
    let mapBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "map"), for: UIControlState())
        btn.tintColor = UIColor.gray//Styles.Colors.white
        btn.isHidden = true
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
    
    var circularGaugeView: CircularGaugeView = {
        let cgV = CircularGaugeView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        cgV.translatesAutoresizingMaskIntoConstraints = false
        cgV.isHidden = true
        return cgV
    }()
    
    var readings: [Reading] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        refreshControl.addTarget(self, action: #selector(DeviceInfoViewController.refresh(_:)), for: .valueChanged)
        
        tableView.addSubview(refreshControl)
        
        setUI()
        
        menuBtn.addTarget(self, action: #selector(DeviceInfoViewController.openMenu), for: .touchUpInside)
    }
    
    fileprivate func setUI() {
        view.addSubview(menuBtn)
        view.addSubview(mapBtn)
        view.addSubview(header)
        view.addSubview(timeStamp)
        view.addSubview(circularGaugeView)
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("V:|-30-[v0]", views: menuBtn)
        view.addConstraintsWithFormat("H:|-15-[v0]", views: menuBtn)
        
        view.addConstraintsWithFormat("V:|-30-[v0]", views: mapBtn)
        view.addConstraintsWithFormat("H:[v0]-15-|", views: mapBtn)
        
        view.addConstraintsWithFormat("V:[v0]-[v1]-20-[v2]-10-[v3]|", views: header, timeStamp, circularGaugeView, tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        
        view.addConstraintsWithFormat("H:[v0(200)]", views: circularGaugeView)
        view.addConstraintsWithFormat("V:[v0(200)]", views: circularGaugeView)

        
        view.addConstraint(NSLayoutConstraint(item: circularGaugeView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0))

        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerY, relatedBy: .equal, toItem: menuBtn, attribute: .centerY, multiplier: 1, constant: 0))
        
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
                    
                    
                    //DEMO
                    self?.circularGaugeView.isHidden = false
                    self?.circularGaugeView.configureWith(config: GaugeStates.sensitive)
                }
            }
        }
    }
    
    func refresh(_ sender: UIRefreshControl) {
        sender.isEnabled = false

        //DEMO
        self.circularGaugeView.configureWith(config: GaugeStates.veryUnhealthy)
        
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
    
    func openMenu() {
        self.slideMenuController()?.openLeft()
    }
}

extension DeviceInfoViewController: UITableViewDelegate, UITableViewDataSource {
    
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
