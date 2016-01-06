//
//  Track.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Tracking {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String

    public init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/tracking/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#identify
    //
    public func identify(id: String, properties: [String: AnyObject], completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/identify/?api_key=\(key)&site_token=\(token)")!
        let data = [
            "person_id": id,
            "properties": properties
        ]

        return client.post(url, data: data, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#properties
    //
    public func properties(id: String, properties: [String: AnyObject], completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionTask? {
        let url = NSURL(string: "\(baseURL)/properties/?api_key=\(key)&site_token=\(token)")!
        let data = [
            "person_id": id,
            "properties": properties
        ]

        return client.post(url, data: data, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func event(name: String, properties: [String: AnyObject]? = nil, completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/event/?api_key=\(key)&site_token=\(token)")!
        var data: [String: AnyObject] = [
            "event": name
        ]

        if let additional = properties {
            data.updateValue(additional, forKey: "data")
        }

        return client.post(url, data: data, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func userEvent(id: String, name: String, properties: [String: AnyObject]? = nil, completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/event/?api_key=\(key)&site_token=\(token)")!
        
        var event: [String: AnyObject] = [
            "name": name
        ]

        if let props = properties {
            event["event"] = props
        }

        let data: [String: AnyObject] = [
            "person_id": id,
            "event": event
        ]

        return client.post(url, data: data, handler: completionHandler)
    }

}
