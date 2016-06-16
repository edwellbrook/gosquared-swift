//
//  Now.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Now {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String

    internal init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/now/v3"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/aggregateStats/
    //
    public func aggregateStats() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/aggregateStats/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/campaigns/
    //
    public func campaigns() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/campaigns/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/concurrents/
    //
    public func concurrents() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/concurrents/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/engagement/
    //
    public func engagement() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/engagement/", query: query)
    }

    //
    // docs
    // https://www.gosquared.com/developer/api/now/v3/geo/
    //
    public func geo() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/geo/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/overview/
    //
    public func overview() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/overview/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/pages/
    //
    public func pages() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/pages/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/sources/
    //
    public func sources() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/sources/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/timeSeries/
    //
    public func timeSeries() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/timeSeries/", query: query)
    }

    //
    // visitors:
    // https://www.gosquared.com/developer/api/now/v3/visitors/
    //
    public func visitors() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/visitors/", query: query)
    }

}
