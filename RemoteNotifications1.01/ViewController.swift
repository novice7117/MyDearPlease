//
//  ViewController.swift
//  RemoteNotifications1.01
//
//  Created by CYKUL on 30/06/18.
//  Copyright © 2018 CYKUL. All rights reserved.
//

import UIKit
import UserNotifications
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        myNotification()
        
    }


    func myNotification()
    {
        let content = UNMutableNotificationContent()
        content.title = "Welcome title"
        content.body  =  "Body "
        content.sound = UNNotificationSound.default()
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "Subhash", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

