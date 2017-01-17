//
//  DeviceInfoViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 27/12/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class DeviceInfoViewController: UIViewController {
    
    var device: Device? {
        didSet {
            guard let device = device else {
                return
            }
            
            header.text = device.identification
            
            if let oldDevice = oldValue {
                if device.id == oldDevice.id {
                    return
                }
            }
            
            refreshData()
        }
    }
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        
        table.dataSource = self
        table.delegate = self
        table.register(ReadingTableViewCell.self)
        table.register(ExtendedReadingTableViewCell.self)
        table.tableFooterView = UIView()
        table.alwaysBounceVertical = false
        table.backgroundColor = .clear
        table.separatorColor = UIColor.fromHex("EFEFEF")
        
        return table
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        view.isHidden = true
        return view
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
        refresh.tintColor = UIColor.fromHex("b0b0b0")
        refresh.attributedTitle = NSAttributedString(string: "Updating data...", attributes: [NSForegroundColorAttributeName: UIColor.fromHex("b0b0b0")])
        return refresh
    }()
    
    var readingCollection: ReadingCollection? {
        didSet {
            
            guard let readingCollection = readingCollection else {
                return
            }
            
            self.readings = Array(readingCollection.realmReadings)
            
            repositionPMs()
            
            tableView.reloadData()
            
            let formatter = DateFormatter()
            formatter.dateStyle = .short
            formatter.timeStyle = .short
            
            timeStamp.text = "\(Text.Readings.subtitle) \(formatter.string(from: readingCollection.lastUpdated))"
            
            
            let config = GaugeStates.getConfigForValue(pm10Value: readingCollection.getReadingValue(type: .pm10), pm25Value: readingCollection.getReadingValue(type: .pm25))
            
            stopAnimatingLoading()

            circularGaugeView.configureWith(config: config)
        }
    }
    
    let loadingGif = UIImage.gif(name: "CityOS_Air_Loading")
    
    var loadingImageView: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        return imgV
    }()
    
    var circularGaugeView: CircularGaugeView = {
        let cgV = CircularGaugeView(frame: CGRect(x: 0, y: 0, width: 224, height: 224))
        cgV.translatesAutoresizingMaskIntoConstraints = false
        cgV.isHidden = true
        return cgV
    }()
    
    var readings: [Reading] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.slideMenuController()?.delegate = self
        
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
        view.addSubview(loadingImageView)
        view.addSubview(lineView)
        view.addSubview(tableView)
        
        view.addConstraintsWithFormat("V:|-40-[v0(30)]", views: menuBtn)
        view.addConstraintsWithFormat("H:|-15-[v0(30)]", views: menuBtn)
        
        view.addConstraintsWithFormat("V:|-40-[v0(30)]", views: mapBtn)
        view.addConstraintsWithFormat("H:[v0(30)]-15-|", views: mapBtn)
        
        view.addConstraintsWithFormat("V:[v0]-[v1]-20-[v2]-10-[v3(0.5)][v4]|", views: header, timeStamp, circularGaugeView, lineView, tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: lineView)
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        
        view.addConstraintsWithFormat("H:[v0(224)]", views: circularGaugeView)
        view.addConstraintsWithFormat("V:[v0(224)]", views: circularGaugeView)

        view.addConstraintsWithFormat("H:[v0(224)]", views: loadingImageView)
        view.addConstraintsWithFormat("V:[v0(224)]", views: loadingImageView)
        
        view.addConstraint(NSLayoutConstraint(item: circularGaugeView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0))
        
        loadingImageView.centerXAnchor.constraint(equalTo: circularGaugeView.centerXAnchor).isActive = true
        loadingImageView.centerYAnchor.constraint(equalTo: circularGaugeView.centerYAnchor).isActive = true
        
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
        
        readings = []
        tableView.reloadData()
        
        startAnimatingLoading()
        
        circularGaugeView.refreshToInitial()
        
        if let deviceID = device?.id {
            AirService.latestReadings(deviceID) { [weak self] (success, message, readingCollection) in
                if let readingCollection = readingCollection {
                    self?.readingCollection = readingCollection
                }
            }
        }
    }
    
    func refresh(_ sender: UIRefreshControl) {
        sender.isEnabled = false

        circularGaugeView.isHidden = true
        loadingImageView.isHidden = false
        loadingImageView.startAnimating()
        
        if let deviceID = device?.id {
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
        
        let reading = readings[(indexPath as NSIndexPath).row]
        
        if reading.readingType == .pm25 || reading.readingType == .pm10 {
            
            let aqiType = reading.readingType == .pm25 ? AQIType.pm25 : AQIType.pm10
            
            let aqi = AQI.getAQIForTypeWithValue(value: reading.value.roundTo(places: 1), aqiType: aqiType)
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as ExtendedReadingTableViewCell
            
            cell.configure(reading.readingType!, aqi: aqi ,value: "\(reading.value.roundTo(places: 1))")
            
            //remove later
            cell.selectionStyle = .none
            
            return cell
        }else {
            
            let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as ReadingTableViewCell
            
            cell.configure(reading.readingType!, value: "\(reading.value.roundTo(places: 1))")
           
            //remove later
            cell.selectionStyle = .none
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
//        let graphVC = GraphViewController()
//        
//        graphVC.reading = readings[(indexPath as NSIndexPath).row]
//        
//        present(graphVC, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0, 1:
            return 45 * UIDevice.delta
        default:
            return 40 * UIDevice.delta
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if (scrollView.contentOffset.y == 0 || scrollView.contentOffset.y < 0) {
            lineView.isHidden = true
        }else {
            lineView.isHidden = false
        }
    }
}

extension DeviceInfoViewController: SlideMenuControllerDelegate {
    func startedPan() {
        self.tableView.isScrollEnabled = false
    }
    
    func endedPan() {
        self.tableView.isScrollEnabled = true
    }
}

extension DeviceInfoViewController {
    
    fileprivate func startAnimatingLoading() {
        loadingImageView.image = loadingGif
        circularGaugeView.isHidden = true
        loadingImageView.isHidden = false
        loadingImageView.startAnimating()
    }
    
    fileprivate func stopAnimatingLoading() {
        loadingImageView.stopAnimating()
        loadingImageView.image = nil
        loadingImageView.isHidden = true
        circularGaugeView.isHidden = false
    }
    
    fileprivate func repositionPMs() {
        
        guard let pm25 = readings.filter({ $0.readingType == ReadingType.pm25 }).first, let pm25Index = readings.index(of: pm25) else {
            return
        }
        
        let newList = rearrange(array: readings, fromIndex: pm25Index, toIndex: 0)
        
        guard let pm10 = newList.filter({ $0.readingType == ReadingType.pm10 }).first, let pm10Index = readings.index(of: pm10) else {
            return
        }
        
        self.readings = rearrange(array: newList, fromIndex: pm10Index, toIndex: 1)
        
    }
    
    fileprivate func rearrange<T>(array: Array<T>, fromIndex: Int, toIndex: Int) -> Array<T>{
        var arr = array
        let element = arr.remove(at: fromIndex)
        arr.insert(element, at: toIndex)
        
        return arr
    }
}
