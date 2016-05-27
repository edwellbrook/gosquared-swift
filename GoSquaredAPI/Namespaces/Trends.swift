//
//  Trends.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
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
        self.baseURL = "\(GoSquaredAPI.baseURL)/trends/v2"
    }

    lazy var dateFormatter: NSDateFormatter = {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()

    //
    // docs:
    //
    //
    public func aggregate(from: NSDate, to: NSDate) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "from": dateFormatter.stringFromDate(from),
            "to": dateFormatter.stringFromDate(to),
            "interval": "hour"
        ]

        return self.client.get("\(baseURL)/aggregate/", query: query)
    }

    public func aggregateFunction(from: NSDate, to: NSDate) -> GoSquaredAPI.CombiningFunction {
        return GoSquaredAPI.CombiningFunction(endpoint: "aggregate", params: [
            "from": dateFormatter.stringFromDate(from),
            "to": dateFormatter.stringFromDate(to),
            "dateFormat": "YYYY-MM-DD HH:mm:ss",
            "interval": "hour"
        ])
    }

    public func aggregate(from: NSDate, to: NSDate, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.aggregate(from, to: to)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func page(from: NSDate, to: NSDate) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "from": dateFormatter.stringFromDate(from),
            "to": dateFormatter.stringFromDate(to),
            "interval": "hour"
        ]

        return self.client.get("\(baseURL)/page/", query: query)
    }

    public func pageFunction(from: NSDate, to: NSDate) -> GoSquaredAPI.CombiningFunction {
        return GoSquaredAPI.CombiningFunction(endpoint: "page", params: [
            "from": dateFormatter.stringFromDate(from),
            "to": dateFormatter.stringFromDate(to),
            "dateFormat": "YYYY-MM-DD HH:mm:ss",
            "limit": "0,3"
        ])
    }

    public func page(from: NSDate, to: NSDate, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.page(from, to: to)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func executeCombiningFunction(functions: [GoSquaredAPI.CombiningFunction], completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let funcs: [(name: String, params: String)] = functions.enumerate().map { idx, fn in
            let name = "\(fn.endpoint):\(idx)"
            let params = fn.params.map({ key, val -> String in
                return "\(name):\(key)=\(val)".stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!
            })

            return (name, params.joinWithSeparator("&"))
        }

        let fns = funcs.map({ $0.name }).joinWithSeparator(",")
        let params = funcs.map({ $0.params }).joinWithSeparator("&")
        let req = self.client.get("\(baseURL)/\(fns)/?api_key=\(key)&site_token=\(token)&\(params)", query: [:])

        return self.client.performRequest(req, handler: completionHandler)
    }

}
