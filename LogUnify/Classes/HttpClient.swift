//
//  HttpClient.swift
//  LogUnify
//
//  Created by Yulong Liu on 2/12/23.
//

import Foundation

class HttpClient {
    let url: URL

    init?(_ url: String) {
        guard let url = URL(string: url) else {
            NSLog("backend url invalid: \(url)")
            return nil
        }
        self.url = url
    }

    func sendRequest(_ records: [EventRecord], completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        var request = URLRequest(url: self.url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let body = EventRequest("test", "testOrg", records)
        
        request.httpBody = try? JSONEncoder().encode(body)

        let task = URLSession.shared.dataTask(with: request, completionHandler: completion)
        task.resume()
    }
}

