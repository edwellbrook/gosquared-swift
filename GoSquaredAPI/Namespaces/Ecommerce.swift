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

        let path = "\(self.basePath)/aggregate"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/browser"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/category"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/country"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/language"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/os"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/product"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/sources"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
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

        let path = "\(self.basePath)/transaction"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url)
    }

}
