//
//  URLRequest.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Go Squared Ltd. All rights reserved.
//

import Foundation

extension URLRequest {

    init(method: String, url: URL, body: AnyObject? = nil) {
        self.init(url: url)
        self.httpMethod = method

        guard let json = body else {
            return
        }

        do {
            self.httpBody = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            self.setValue("application/json", forHTTPHeaderField: "Content-Type")
        } catch _ {
        }
    }

}
