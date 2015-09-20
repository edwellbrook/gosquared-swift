//
//  Now.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Now {

    private let key: String
    private let token: String
    private let client: GoSquared
    private let baseURL: String

    public init(client: GoSquared) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquared.baseURL)/now/v3/"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/aggregateStats/
    //
    public func aggregateStats(completionHandler: GoSquared.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/aggregateStats/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/campaigns/
    //
    public func campaigns(completionHandler: GoSquared.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/campaigns/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/concurrents/
    //
    public func concurrents(completionHandler: (response: Concurrents?, error: NSError?) -> Void) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/concurrents/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: { response, error in
            if error != nil {
                return completionHandler(response: nil, error: error)
            }
            if let json = response as? [String: AnyObject] {
                return completionHandler(response: Concurrents(json: json), error: nil)
            }
            completionHandler(response: nil, error: nil)
        })
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/engagement/
    //
    public func engagement(completionHandler: (response: Engagement?, error: NSError?) -> Void) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/engagement/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: { response, error in
            if error != nil {
                return completionHandler(response: nil, error: error)
            }
            if let json = response as? [String: AnyObject] {
                return completionHandler(response: Engagement(json: json), error: nil)
            }
            completionHandler(response: nil, error: nil)
        })
    }

    //
    // docs
    // https://www.gosquared.com/developer/api/now/v3/geo/
    //
    public func geo(completionHandler: (response: Geo?, error: NSError?) -> Void) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/geo/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: { response, error in
            if error != nil {
                return completionHandler(response: nil, error: error)
            }
            if let json = response as? [String: AnyObject] {
                return completionHandler(response: Geo(json: json), error: nil)
            }
            completionHandler(response: nil, error: nil)
        })
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/overview/
    //
    public func overview(completionHandler: (response: Overview?, error: NSError?) -> Void) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/overview/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: { response, error in
            if error != nil {
                return completionHandler(response: nil, error: error)
            }
            if let json = response as? [String: AnyObject] {
                return completionHandler(response: Overview(json: json), error: nil)
            }
            completionHandler(response: nil, error: nil)
        })
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/pages/
    //
    public func pages(completionHandler: (response: Pages?, error: NSError?) -> Void) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/pages/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: { response, error in
            if error != nil {
                return completionHandler(response: nil, error: error)
            }
            if let json = response as? [String: AnyObject] {
                return completionHandler(response: Pages(json: json), error: nil)
            }
            completionHandler(response: nil, error: nil)
        })
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/sources/
    //
    public func sources(completionHandler: GoSquared.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/sources/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/timeSeries/
    //
    public func timeSeries(completionHandler: GoSquared.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/timeSeries/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // visitors:
    // https://www.gosquared.com/developer/api/now/v3/visitors/
    //
    public func visitors(completionHandler: GoSquared.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/visitors/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

}
