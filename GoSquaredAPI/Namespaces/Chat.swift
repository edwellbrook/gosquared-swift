//
//  Chat.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright © 2016 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Chat {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String
    private let stagingBaseURL: String

    public init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/chat/v1"
        self.stagingBaseURL = "\(GoSquaredAPI.stagingBaseURL)/chat/v1"
    }

    
    public func chats(completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(stagingBaseURL)/chats?site_token=\(token)&api_key=\(key)")!

        return self.client.get(url, handler: completionHandler)
    }

    public func messages(user: String, limit: Int = 20, offset: Int = 0, completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(stagingBaseURL)/chats/\(user)/messages?site_token=\(token)&api_key=\(key)&limit=\(limit)&offset=\(offset)")!

        return self.client.get(url, handler: completionHandler)
    }

    public func stream(completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(stagingBaseURL)/stream?site_token=\(token)&api_key=\(key)")!

        return self.client.get(url, handler: completionHandler)
    }

}
