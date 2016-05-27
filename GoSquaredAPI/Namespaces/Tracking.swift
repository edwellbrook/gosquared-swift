//
//  Track.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
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
    public func identify(id: String, properties: [String: AnyObject]) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        let body = [
            "person_id": id,
            "properties": properties
        ]

        return self.client.post("\(baseURL)/identify/", query: query, body: body)
    }

    public func identify(id: String, properties: [String: AnyObject], completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.identify(id, properties: properties)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#properties
    //
    public func properties(id: String, properties: [String: AnyObject]) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        let body = [
            "person_id": id,
            "properties": properties
        ]

        return self.client.post("\(baseURL)/properties/", query: query, body: body)
    }

    public func properties(id: String, properties: [String: AnyObject], completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionTask? {
        let req = self.properties(id, properties: properties)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func event(name: String, properties: [String: AnyObject]? = nil) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        var body: [String: AnyObject] = [
            "event": name
        ]

        if let additional = properties {
            body.updateValue(additional, forKey: "data")
        }

        return self.client.post("\(baseURL)/event/", query: query, body: body)
    }

    public func event(name: String, properties: [String: AnyObject]? = nil, completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.event(name, properties: properties)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func userEvent(id: String, name: String, properties: [String: AnyObject]? = nil) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        var event: [String: AnyObject] = [
            "name": name
        ]

        if let props = properties {
            event["data"] = props
        }

        let body: [String: AnyObject] = [
            "person_id": id,
            "event": event
        ]

        return self.client.post("\(baseURL)/event/", query: query, body: body)
    }

    public func userEvent(id: String, name: String, properties: [String: AnyObject]? = nil, completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.userEvent(id, name: name)

        return self.client.performRequest(req, handler: completionHandler)
    }

}
