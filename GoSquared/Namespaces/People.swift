//
//  People.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 28/08/2015.
//  Copyright © 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class People {

    private let key: String
    private let token: String
    private let client: GoSquared
    private let baseURL: String

    public init(client: GoSquared) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquared.baseURL)/people/v1"
    }

    public func search(query: String = "", count: Int = 35, offset: Int = 0, completionHandler: GoSquared.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/search/?api_key=\(key)&site_token=\(token)&query=\(query)&limit=\(offset),\(count)&sort=last.seen:desc")!

        return client.get(url, handler: completionHandler)
    }

    public func feed(user: String, completionHandler: GoSquared.Handler? = nil) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/person/\(user)/feed/?api_key=\(key)&site_token=\(token)&presenter=nice")!

        return client.get(url, handler: completionHandler)
    }

}