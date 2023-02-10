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
        
        let config = LogUnifyConfig("http://localhost:8081/api/events/_bulk", timerTrigger: 1)
        try! UnifyLogger.initialize(config)
        
        var event = UserActivity()
        event.userID = "iOS App"
        event.event = Event.click
        event.sessionID = "iOS Session"
        event.buttonType = ButtonType.next
        event.surface = Surface.screen1
        event.stringArray = ["a", "b", "c"]
        event.intArray = [1, 2, 3]
        var m = UserActivity.string_int_mapEntry()
        m.key = "key"
        m.value = 123
        event.stringIntMap.append(m)
        
        print(event)
        event.log()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

