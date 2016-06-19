//
//  Track.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Tracking {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/tracking/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#identify
    //
    public func identify(personId: String, properties: [String: AnyObject]) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        let body = [
            "person_id": personId,
            "properties": properties
        ]

        let path = "\(self.basePath)/identify/"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func event(_ name: String, properties: [String: AnyObject]? = nil) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        var body: [String: AnyObject] = [
            "event": name
        ]

        if let additional = properties {
            body.updateValue(additional, forKey: "data")
        }

        let path = "\(self.basePath)/event/"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/tracking/api/http#events
    //
    public func event(personId: String, name: String, properties: [String: AnyObject]? = nil) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        var event: [String: AnyObject] = [
            "name": name
        ]

        if let props = properties {
            event["data"] = props
        }

        let body: [String: AnyObject] = [
            "person_id": personId,
            "event": event
        ]

        let path = "\(self.basePath)/event/"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body)
    }

}
