//
//  Trends.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright © 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Trends {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String

    public init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/trends/v2/"
    }


    public func aggregate(from: String, to: String, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/aggregate/?api_key=\(key)&site_token=\(token)&from=\(from)&to=\(to)")!

        return client.get(url, handler: completionHandler)
    }
    
}
