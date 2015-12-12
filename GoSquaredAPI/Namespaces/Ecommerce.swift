//
//  Ecommerce.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
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
        self.baseURL = "\(GoSquaredAPI.baseURL)/ecommerce/v1/"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/aggregate/
    //
    public func aggregate(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/aggregate/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/browser/
    //
    public func browser(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/browser/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/category/
    //
    public func category(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/category/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/country/
    //
    public func country(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/country/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/language/
    //
    public func language(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/language/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/os/
    //
    public func os(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/os/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/product/
    //
    public func product(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/product/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/sources/
    //
    public func sources(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/sources/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/transaction/
    //
    public func transaction(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/transaction/?api_key=\(key)&site_token=\(token)")!

        return client.get(url, handler: completionHandler)
    }

}
