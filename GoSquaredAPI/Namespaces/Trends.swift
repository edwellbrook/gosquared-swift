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

    lazy var dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()

    public func aggregate(from: NSDate, to: NSDate, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let safeFrom = dateFormatter.stringFromDate(from).stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!
        let safeTo = dateFormatter.stringFromDate(to).stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!
        let url = NSURL(string: "\(baseURL)/aggregate/?api_key=\(key)&site_token=\(token)&from=\(safeFrom)&to=\(safeTo)&interval=hour")!

        return client.get(url, handler: completionHandler)
    }
    
}
