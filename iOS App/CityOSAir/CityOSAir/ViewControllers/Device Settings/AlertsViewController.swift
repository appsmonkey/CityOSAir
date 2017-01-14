//
//  AlertsViewController.swift
//  CityOSAir
//
//  Created by Andrej Saric on 08/01/2017.
//  Copyright © 2017 CityOS. All rights reserved.
//

import UIKit
import Firebase

/*
 Good - statusGood
 Moderate - statusModerate
 Unhealthy for sensitive - statusSensitive
 Unhealthy - statusUnhealthy
 Very unhealthy - statusVeryUnhealthy
 Hazardous - statusHazardous
 */

struct Topic {
    var name: String
    var topicName: String
    var isSubscribed: Bool
}

class AlertsViewController: UIViewController {

    lazy var backBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "backbtn"), for: UIControlState())
        btn.tintColor = UIColor.gray
        btn.addTarget(self, action: #selector(SettingsViewController.dimissVC), for: .touchUpInside)
        return btn
    }()
    
    let header: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.Detail.HeaderText.font
        lbl.textColor = Styles.Detail.HeaderText.tintColor
        lbl.text = Text.Settings.AirAlerts.title
        return lbl
    }()
    
    lazy var tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        table.register(SwitchTableViewCell.self)
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.separatorColor = UIColor.lightGray.withAlphaComponent(0.7)
        table.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.96, alpha:1.00)
        table.alwaysBounceVertical = false
        return table
    }()
    
    var shouldDisable = true
    
    var allTopics = [Topic(name: Text.Settings.AirAlerts.good, topicName: "statusGood", isSubscribed: false),
                  Topic(name: Text.Settings.AirAlerts.moderate, topicName: "statusModerate", isSubscribed: false),
                  Topic(name: Text.Settings.AirAlerts.sensitive, topicName: "statusSensitive", isSubscribed: false),
                  Topic(name: Text.Settings.AirAlerts.unhealthy, topicName: "statusUnhealthy", isSubscribed: false),
                  Topic(name: Text.Settings.AirAlerts.veryUnhealthy, topicName: "statusVeryUnhealthy", isSubscribed: false),
                  Topic(name: Text.Settings.AirAlerts.hazardous, topicName: "statusHazardous", isSubscribed: false)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getSubscribedTopics { topics in
            if let topics = topics {
                
//                topics.append("statusGood")
//                topics.append("statusUnhealthy")
                
                print(topics)

                
                for topicName in topics {
                    
                    self.allTopics = self.allTopics.map { (topic: Topic) -> Topic in
                        var mutableTopic = topic
                        
                        if mutableTopic.topicName == topicName {
                            mutableTopic.isSubscribed = true
                        }
                        
                        return mutableTopic
                    }
                }
                
                
                self.shouldDisable = false
            }else {
                self.shouldDisable = true
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            
        }
        
        self.view.backgroundColor = .white
        
        setUI()
        
        //used to hide last cell
        tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.size.width, height: 1))
    }
    
    fileprivate func setUI() {
        
        view.addSubview(header)
        view.addSubview(backBtn)
        view.addSubview(tableView)
        
        let lineView = UIView()
        lineView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.7)
        
        view.addSubview(lineView)
        
        view.addConstraintsWithFormat("V:|-30-[v0(30)]", views: backBtn)
        view.addConstraintsWithFormat("H:|-15-[v0(30)]", views: backBtn)
        
        view.addConstraintsWithFormat("V:[v0]-[v1(0.5)][v2]|", views: header, lineView, tableView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: lineView)
        
        view.addConstraintsWithFormat("H:|[v0]|", views: tableView)
        
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        
        view.addConstraint(NSLayoutConstraint(item: header, attribute: .centerY, relatedBy: .equal, toItem: backBtn, attribute: .centerY, multiplier: 1, constant: 0))
    }
    
    func dimissVC() {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    func getSubscribedTopics(completion: @escaping (_ topics: [String]?) -> ()) {
        
        guard let token = FIRInstanceID.instanceID().token() else {
            completion(nil)
            return
        }
        
        let path = "https://iid.googleapis.com/iid/info/\(token)?details=true"
        
        let request = NSMutableURLRequest(url: URL(string: path)!)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let keyAuth = "key=AAAARmykrK4:APA91bHGJCVTT_Tu9OdkLJBhMrT_0lcBsJpzh1PD1W4-MFpffyWWmdK5Iyl11lKkVwetNLx3zXdzt-_UqefZy_hcSBZYr2L7vLGLWC7XY0D8gFVPUp7LubWHJyclvmsPtB5w9ZZUTUbS"
        
        request.addValue(keyAuth, forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            
            if let data = data {
                
                let json = JSON(data: data)
                
                if let response = response as? HTTPURLResponse {
                    
                    if 200...299 ~= response.statusCode {
                        
                        var resultTopics = [String]()
                        
                        if let dict = json["rel"]["topics"].dictionary {
                            for (key, _) in dict {
                                resultTopics.append(key)
                            }
                        }
                        
                        completion(resultTopics)
                    } else {
                        completion(nil)
                    }
                }
            }else {
                return completion(nil)
            }
        }) .resume()
    }
    
    func switchToggled(sender: UISwitch) {
        
        allTopics[sender.tag].isSubscribed = !allTopics[sender.tag].isSubscribed
        let topic = allTopics[sender.tag]
        
        print(topic.name)
        print(topic.isSubscribed)
        
//        let topicPath = "/topics/\(topic.topicName)"
        
        if topic.isSubscribed {
            //should subscribe
//            FIRMessaging.messaging().subscribe(toTopic: topicPath)
        }else {
            //should unsubscribe
//            FIRMessaging.messaging().unsubscribe(fromTopic: topicPath)
        }
    }
}

extension AlertsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = Text.Settings.AirAlerts.footer
            cell.textLabel?.font = Styles.SettingsCell.subtitleFont
            cell.textLabel?.textColor = Styles.SettingsCell.subtitleColor
            cell.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.96, alpha:1.00)
            cell.selectionStyle = .none
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(forIndexPath: indexPath) as SwitchTableViewCell
        
        let topic = allTopics[indexPath.row]
        
        cell.titleLabel.text = topic.name
        
        cell.configure(isOn: topic.isSubscribed, isDisabled: shouldDisable)
        
        cell.switchControl.tag = indexPath.row
        
        cell.switchControl.addTarget(self, action: #selector(AlertsViewController.switchToggled(sender:)), for: .valueChanged)
        
        if indexPath.row == 5 {
            cell.separatorInset = UIEdgeInsetsMake(0, cell.bounds.size.width, 0, 0);
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 6 ? 30 : 80
    }
}
