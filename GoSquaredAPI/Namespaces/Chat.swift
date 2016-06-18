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
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/chat/v1"
    }

    // 
    // docs:
    // 
    //
    public func chats() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/chats/", queryItems: queryItems)
    }

    //
    // docs:
    //
    //
    public func messages(_ user: String, limit: Int = 20, offset: Int = 0) -> URLRequest {
        let userId = user.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!

        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "limit", value: String(limit)),
            URLQueryItem(name: "offset", value: String(offset))
        ]

        return GETRequest("\(self.basePath)/chats/\(userId)/messages", queryItems: queryItems)
    }

    //
    // docs:
    //
    //
    public func stream() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/stream/", queryItems: queryItems)
    }

}
