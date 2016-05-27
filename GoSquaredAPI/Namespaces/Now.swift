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

    public init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/now/v3"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/aggregateStats/
    //
    public func aggregateStats() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/aggregateStats/", query: query)
    }
    
    public func aggregateStats(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.aggregateStats()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/campaigns/
    //
    public func campaigns() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/campaigns/", query: query)
    }

    public func campaigns(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.campaigns()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/concurrents/
    //
    public func concurrents() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/concurrents/", query: query)
    }

    public func concurrents(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.concurrents()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/engagement/
    //
    public func engagement() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/engagement/", query: query)
    }

    public func engagement(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = engagement()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs
    // https://www.gosquared.com/developer/api/now/v3/geo/
    //
    public func geo() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/geo/", query: query)
    }

    public func geo(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.geo()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/overview/
    //
    public func overview() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/overview/", query: query)
    }

    public func overview(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.overview()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/pages/
    //
    public func pages() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/pages/", query: query)
    }

    public func pages(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.pages()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/sources/
    //
    public func sources() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/sources/", query: query)
    }

    public func sources(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.sources()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/timeSeries/
    //
    public func timeSeries() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/timeSeries/", query: query)
    }

    public func timeSeries(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.timeSeries()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // visitors:
    // https://www.gosquared.com/developer/api/now/v3/visitors/
    //
    public func visitors() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return self.client.get("\(baseURL)/visitors/", query: query)
    }

    public func visitors(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.visitors()

        return self.client.performRequest(req, handler: completionHandler)
    }

}
