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

    internal init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/tracking/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#identify
    //
    public func identify(_ id: String, properties: [String: AnyObject]) -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        let body = [
            "person_id": id,
            "properties": properties
        ]

        return POSTRequest("\(baseURL)/identify/", query: query, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#properties
    //
    public func properties(_ id: String, properties: [String: AnyObject]) -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        let body = [
            "person_id": id,
            "properties": properties
        ]

        return POSTRequest("\(baseURL)/properties/", query: query, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func event(_ name: String, properties: [String: AnyObject]? = nil) -> URLRequest {
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

        return POSTRequest("\(baseURL)/event/", query: query, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func userEvent(_ id: String, name: String, properties: [String: AnyObject]? = nil) -> URLRequest {
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

        return POSTRequest("\(baseURL)/event/", query: query, body: body)
    }

}
