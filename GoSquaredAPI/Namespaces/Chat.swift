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

    internal init(client: GoSquaredAPI) {
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

        return GETRequest("\(baseURL)/chats/", query: query)
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

        return GETRequest("\(baseURL)/chats/\(userId)/messages", query: query)
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

        return GETRequest("\(baseURL)/stream/", query: query)
    }

}
