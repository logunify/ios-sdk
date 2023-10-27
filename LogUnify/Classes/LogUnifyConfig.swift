//
//  LogUnifyConfig.swift
//  LogUnify
//
//  Created by Yulong Liu on 2/12/23.
//

import Foundation

public struct LogUnifyConfig {
    var serverUrl: String;
    var apiKey: String;
    var maxEvents: Int = 5000;
    var batchSize: Int = 10;
    var timerTrigger: Int = 60;

    public init(_ serverUrl: String,
                apiKey: String,
                batchSize: Int = 10,
                timerTrigger: Int = 60) {
        self.serverUrl = serverUrl
        self.apiKey = apiKey
        self.batchSize = batchSize
        self.timerTrigger = timerTrigger
    }
}
