//
//  Ecommerce.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Ecommerce {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/ecommerce/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/aggregate/
    //
    public func aggregate() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/aggregate/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/browser/
    //
    public func browser() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/browser/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/category/
    //
    public func category() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/category/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/country/
    //
    public func country() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/country/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/language/
    //
    public func language() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/language/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/os/
    //
    public func os() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/os/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/product/
    //
    public func product() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/product/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/sources/
    //
    public func sources() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/sources/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/transaction/
    //
    public func transaction() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest("\(self.basePath)/transaction/", queryItems: queryItems)
    }

}
