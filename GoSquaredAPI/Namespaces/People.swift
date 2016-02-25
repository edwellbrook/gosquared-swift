//
//  People.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 28/08/2015.
//  Copyright © 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct SearchOptions {
    public var filters: String
    public var count: Int
    public var offset: Int
    public var sort: (key: String, direction: String)

    public init() {
        self.filters = "[]"
        self.count = 35
        self.offset = 0
        self.sort = (key: "last.seen", direction: "desc")
    }
}

public struct FeedOptions {
    public var eventTypes: [String]
    public var count: Int
    public var offset: Int

    public init() {
        self.eventTypes = ["sessionEvent", "event"]
        self.count = 25
        self.offset = 0
    }
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

    public func search(query: String = "", options opts: SearchOptions = SearchOptions(), completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {

        let safeQuery = query.stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!
        let safeFilters = opts.filters.stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!
        let safeSortKey = opts.sort.key.stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!

        let url = NSURL(string: "\(baseURL)/search/?api_key=\(key)&site_token=\(token)&query=\(safeQuery)&filters=\(safeFilters)&limit=\(opts.offset),\(opts.count)&sort=\(safeSortKey):\(opts.sort.direction)")!

        return client.get(url, handler: completionHandler)
    }

    public func details(user: String, completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/person/\(user)/details?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    public func feed(user: String, options opts: FeedOptions = FeedOptions(), completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let types = opts.eventTypes.joinWithSeparator(",")
        let url = NSURL(string: "\(baseURL)/person/\(user)/feed/?api_key=\(key)&site_token=\(token)&presenter=nice&type=\(types)&limit=\(opts.offset),\(opts.count)")!

        return client.get(url, handler: completionHandler)
    }

    public func smartGroup(completionHanlder: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/smartgroups?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHanlder)
    }

}