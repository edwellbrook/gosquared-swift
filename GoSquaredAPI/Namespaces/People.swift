//
//  People.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 28/08/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public struct SearchOptions {
    public var filters: String = "[]"
    public var count: Int = 35
    public var offset: Int = 0
    public var sort: (key: String, direction: String) = (key: "last.seen", direction: "desc")
    
    public init() {}
}


public struct FeedOptions {
    public var eventTypes: [String] = ["sessionEvent", "event"]
    public var count: Int = 25
    public var offset: Int = 0
    
    public init() {}
}


public class People {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/people/v1"
    }

    //
    // docs:
    //
    //
    public func search(_ query: String = "", options opts: SearchOptions = SearchOptions()) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "query", value: query),
            URLQueryItem(name: "filters", value: opts.filters),
            URLQueryItem(name: "limit", value: "\(opts.offset),\(opts.count)"),
            URLQueryItem(name: "sort", value: "\(opts.sort.key):\(opts.sort.direction)")
        ]

        let path = "\(self.basePath)/search/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
    }

    //
    // docs:
    //
    //
    public func details(_ user: String) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "api_key", value: self.client.key)
        ]

        let path = "\(self.basePath)/person/\(user)/details/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
    }

    //
    // docs:
    //
    //
    public func feed(_ user: String, options opts: FeedOptions = FeedOptions()) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "presenter", value: "nice"),
            URLQueryItem(name: "type", value: opts.eventTypes.joined(separator: ",")),
            URLQueryItem(name: "limit", value: "\(opts.offset),\(opts.count)")
        ]

        let path = "\(self.basePath)/person/\(user)/feed/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
    }

    //
    // docs:
    //
    //
    public func smartGroup() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "api_key", value: self.client.key)
        ]

        let path = "\(self.basePath)/smartgroups/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
    }

}
