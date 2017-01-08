//
//  MenuViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 27/12/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    lazy var closeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "close"), for: UIControlState())
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(MenuViewController.closePressed), for: .touchUpInside)
        return btn
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.separatorStyle = .none
        table.alwaysBounceVertical = false
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .clear
        return table
    }()
    
    var first = [MenuCells.cityAir] //MenuCells.cityMap
    var second = [MenuCells.aqiPM10, MenuCells.aqiPM25, MenuCells.settings]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .black
        
        setupSections()
        
        setUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupSections()
        tableView.reloadData()
    }
    
    fileprivate func setupSections() {
        
        first = [MenuCells.cityAir]
        second = [MenuCells.aqiPM10, MenuCells.aqiPM25, MenuCells.settings]
        
        if let _ = UserManager.sharedInstance.getLoggedInUser(), let devices = Cache.sharedCache.getDeviceCollection()  {
            for device in devices {
                
                if device.identification == MenuCells.cityAir.text {
                    continue
                }
                
                first.append(MenuCells.cityDevice(name: device.identification))
            }
        } else {
            second.insert(MenuCells.logIn, at: 0)
        }
    }
    
    fileprivate func setUI() {
        view.addSubview(closeBtn)
        view.addSubview(tableView)
        
        closeBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        closeBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15).isActive = true
        closeBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        closeBtn.widthAnchor.constraint(equalTo: closeBtn.heightAnchor).isActive = true
        
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: closeBtn.topAnchor).isActive = true
        
    }
    
    func closePressed() {
        self.slideMenuController()?.closeLeft()
    }

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? first.count : second.count
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 20 : 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.indentationWidth = 15
        cell.indentationLevel = 1
//        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        
        if indexPath.section == 0 {
            cell.textLabel?.font = Styles.MenuButtonBig.font
            cell.textLabel?.textColor = Styles.MenuButtonBig.tintColor
        }else {
            cell.textLabel?.font = Styles.MenuButtonSmall.font
            cell.textLabel?.textColor = Styles.MenuButtonSmall.tintColor
        }
        
        cell.accessoryType = .none

        
        return cell
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            
            guard let current = self.slideMenuController()?.mainViewController as? DeviceInfoViewController, let title = current.header.text else {
                
                cell.textLabel?.text = first[indexPath.row].text
                return
            }
            
            if title == first[indexPath.row].text {
                cell.textLabel?.textColor = Styles.MenuButtonBig.choosenTintColor
            }
            
            cell.textLabel?.text = first[indexPath.row].text

        }else {
            
            switch second[indexPath.row] {
                case .aqiPM25:
                    
                    let attributedText = NSMutableAttributedString(string: second[indexPath.row].text, attributes: [NSFontAttributeName:Styles.MenuButtonSmall.font])
                    
                    attributedText.setAttributes([NSFontAttributeName:Styles.MenuButtonSmall.subscriptFont,NSBaselineOffsetAttributeName:-8], range: NSRange(location:2,length:3))
                    
                    cell.textLabel?.attributedText = attributedText
                    
                    return
                default:
                    break
            }
            
            cell.textLabel?.text = second[indexPath.row].text

        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        var data = indexPath.section == 0 ? first : second
        
        switch data[indexPath.row] {
            
        case .aqiPM10:
            let aqiVC = AQIViewController()
            aqiVC.aqiType = .pm10
            self.show(aqiVC, sender: self)
        case .aqiPM25:
            let aqiVC = AQIViewController()
            aqiVC.aqiType = .pm25
            self.show(aqiVC, sender: self)
        case .settings:
            self.show(SettingsViewController(), sender: self)
        case .logIn:
            let loginVC = LogInViewController()
            loginVC.shouldClose = true
            self.present(UINavigationController(rootViewController: loginVC) , animated: true)
        case .cityDevice(let name):
            transitionToDevice(name: name)
        case .cityAir:
            transitionToDevice(name: Text.Readings.title)
        default:
            break
        }
    }
    
    fileprivate func transitionToDevice(name: String) {
        
        guard let device = Cache.sharedCache.getDeviceForIdentifier(identifier: name) ,let current = self.slideMenuController()?.mainViewController as? DeviceInfoViewController else {
            return
        }
        current.device = device
        
        closePressed()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? Styles.cellHeight(CellType.email) : 45
    }
}
