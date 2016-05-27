//
//  Ecommerce.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Ecommerce {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String

    public init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/ecommerce/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/aggregate/
    //
    public func aggregate() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/aggregate/", query: query)
    }

    public func aggregate(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.aggregate()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/browser/
    //
    public func browser() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/browser/", query: query)
    }

    public func browser(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.browser()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/category/
    //
    public func category() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/category/", query: query)
    }

    public func category(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.category()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/country/
    //
    public func country() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/country/", query: query)
    }

    public func country(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.country()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/language/
    //
    public func language() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/language/", query: query)
    }

    public func language(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.language()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/os/
    //
    public func os() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/os/", query: query)
    }

    public func os(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.os()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/product/
    //
    public func product() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/product/", query: query)
    }

    public func product(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.product()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/sources/
    //
    public func sources() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/sources/", query: query)
    }

    public func sources(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.sources()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/transaction/
    //
    public func transaction() -> NSURLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return client.get("\(baseURL)/transaction/", query: query)
    }

    public func transaction(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.transaction()

        return self.client.performRequest(req, handler: completionHandler)
    }

}
