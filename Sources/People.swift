//
//  People.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 28/08/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class People {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/people/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/devices/http/#retrieve_a_list_of_all_devices
    //
    public func devices(limit: Int = 25, offset: Int = 0) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project),
            URLQueryItem(name: "limit", value: "\(limit),\(offset)")
        ]

        let path = "\(self.basePath)/devices"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/devices/http/#retrieve_a_device
    //
    public func device(deviceId: String) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/devices/\(deviceId)"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/eventTypes/http/#retrieve_a_list_of_event_types
    //
    public func eventTypes() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/eventTypes"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/people/http/#search_for_a_list_of_people
    //
    public func search(_ query: String, parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project),
            URLQueryItem(name: "query", value: query)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/people"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/people/http/#retrieve_a_person
    //
    public func details(personId: String) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/people/\(personId)"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/people/http/#retrieve_a_list_of_devices_for_a_person
    //
    public func devices(personId: String, limit: Int = 15, offset: Int = 0) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project),
            URLQueryItem(name: "limit", value: "\(limit),\(offset)")
        ]

        let path = "\(self.basePath)/people/\(personId)/devices"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/people/http/#retrieve_a_feed_of_events_for_a_person
    //
    public func feed(personId: String, parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/people/\(personId)/feed"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/people/smartgroups/http/#retrieve_all_smart_groups
    //
    public func smartGroups() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/smartgroups"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

}
