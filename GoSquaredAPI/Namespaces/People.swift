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
}

public struct FeedOptions {
    public var eventTypes: [String] = ["sessionEvent", "event"]
    public var count: Int = 25
    public var offset: Int = 0
}

public class People {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String
    private let stagingBaseURL: String

    public init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/people/v1"
        self.stagingBaseURL = "\(GoSquaredAPI.stagingBaseURL)/people/v1"
    }

    //
    // docs:
    //
    //
    public func search(query: String = "", options opts: SearchOptions = SearchOptions()) -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "query": query,
            "filters": opts.filters,
            "limit": "\(opts.offset),\(opts.count)",
            "sort": "\(opts.sort.key):\(opts.sort.direction)"
        ]

        return self.client.get("\(baseURL)/search/", query: query)
    }

    public func search(query: String = "", options opts: SearchOptions = SearchOptions(), completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.search(query, options: opts)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func details(user: String) -> NSURLRequest {
        let userId = user.stringByAddingPercentEncodingWithAllowedCharacters(.URLPathAllowedCharacterSet())!
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/person/\(userId)/details/", query: query)
    }

    public func details(user: String, completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.details(user)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func feed(user: String, options opts: FeedOptions = FeedOptions()) -> NSURLRequest {
        let userId = user.stringByAddingPercentEncodingWithAllowedCharacters(.URLPathAllowedCharacterSet())!
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "presenter": "nice",
            "type": opts.eventTypes.joinWithSeparator(","),
            "limit": "\(opts.offset),\(opts.count)"
        ]

        return self.client.get("\(baseURL)/person/\(userId)/details/", query: query)
    }

    public func feed(user: String, options opts: FeedOptions = FeedOptions(), completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.feed(user, options: opts)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func smartGroup() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/smartgroups/", query: query)
    }

    public func smartGroup(completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.smartGroup()

        return self.client.performRequest(req, handler: completionHandler)
    }

}