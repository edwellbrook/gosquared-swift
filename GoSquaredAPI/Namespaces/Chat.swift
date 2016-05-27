//
//  Chat.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright (c) 2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Chat {

    private let client: GoSquaredAPI
    private let baseURL: String
    private let stagingBaseURL: String

    public init(client: GoSquaredAPI) {
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/chat/v1"
        self.stagingBaseURL = "\(GoSquaredAPI.stagingBaseURL)/chat/v1"
    }

    // 
    // docs:
    // 
    //
    public func chats() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/chats/", query: query)
    }

    public func chats(completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.chats()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func messages(user: String, limit: Int = 20, offset: Int = 0) -> NSURLRequest {
        let userId = user.stringByAddingPercentEncodingWithAllowedCharacters(.URLPathAllowedCharacterSet())!
        let query: [String : AnyObject] = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "limit": limit,
            "offset": offset
        ]

        return self.client.get("\(baseURL)/chats/\(userId)/messages", query: query)
    }

    public func messages(user: String, limit: Int = 20, offset: Int = 0, completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.messages(user, limit: limit, offset: offset)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    //
    //
    public func stream() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/stream/", query: query)
    }

    public func stream(completionHandler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let req = self.stream()

        return self.client.performRequest(req, handler: completionHandler)
    }

}
