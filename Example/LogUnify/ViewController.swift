//
//  ViewController.swift
//  LogUnify
//
//  Created by liuyl on 02/10/2023.
//  Copyright (c) 2023 liuyl. All rights reserved.
//

import UIKit
import LogUnify

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let config = LogUnifyConfig("http://localhost:8081/api/events/_bulk", timerTrigger: 10)
        try! UnifyLogger.initialize(config)
        
        var event = UserActivity()
        event.userID = "iOS App"
        event.event = Event.click
        event.sessionID = "iOS Session"
        event.buttonType = ButtonType.next
        event.surface = Surface.screen1
        event.log()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

