//
//  People.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 28/08/2015.
//  Copyright © 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

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

    public func search(query: String = "", count: Int = 35, offset: Int = 0, completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/search/?api_key=\(key)&site_token=\(token)&query=\(query)&limit=\(offset),\(count)&sort=last.seen:desc")!

        return client.get(url, handler: completionHandler)
    }

    public func details(user: String, completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/person/\(user)/details?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    public func feed(user: String, completionHandler: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/person/\(user)/feed/?api_key=\(key)&site_token=\(token)&presenter=nice")!

        return client.get(url, handler: completionHandler)
    }

    public func smartGroup(completionHanlder: GoSquaredAPI.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(stagingBaseURL)/smartgroups?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHanlder)
    }

}