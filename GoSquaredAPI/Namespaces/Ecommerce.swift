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

    internal init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/ecommerce/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/aggregate/
    //
    public func aggregate() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/aggregate/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/browser/
    //
    public func browser() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/browser/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/category/
    //
    public func category() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/category/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/country/
    //
    public func country() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/country/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/language/
    //
    public func language() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/language/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/os/
    //
    public func os() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/os/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/product/
    //
    public func product() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/product/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/ecommerce/v1/sources/
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
    // https://www.gosquared.com/developer/api/ecommerce/v1/transaction/
    //
    public func transaction() -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key
        ]

        return GETRequest("\(baseURL)/transaction/", query: query)
    }

}
