//
//  Trends.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Trends {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/trends/v2"
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/aggregate/http/#retrieve_historical_aggregate_data
    //
    public func aggregate(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/aggregate"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/browser/http/#retrieve_historical_browser_data
    //
    public func browsers(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/browser"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/category/http/#retrieve_historical_category_data
    //
    public func categories(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/category"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/country/http/#retrieve_historical_country_data
    //
    public func countries(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/country"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/event/http/#retrieve_historical_event_data
    //
    public func events(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/event"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/language/http/#retrieve_historical_language_data
    //
    public func languages(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/language"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/organisation/http/#retrieve_historical_organisation_data
    //
    public func organisations(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/organisation"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/os/http/#retrieve_historical_operating_system_data
    //
    public func os(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/os"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/page/http/#retrieve_historical_page_data
    //
    public func pages(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/page"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/path1/http/#retrieve_historical_base_path_data
    //
    public func basePaths(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/path1"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/product/http/#retrieve_historical_product_data
    //
    public func products(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/product"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/screenDimensions/http/#retrieve_historical_screen_dimensions_data
    //
    public func screenDimensions(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/screenDimensions"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/sources/http/#retrieve_historic_sources_data
    //
    public func sources(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/sources"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/trends/transaction/http/#retrieve_historical_transaction_data
    //
    public func transactions(parameters: [String: String]) -> URLRequest {
        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for (key, value) in parameters {
            queryItems.append(URLQueryItem(name: key, value: value))
        }

        let path = "\(self.basePath)/transaction"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/combining-functions
    //
    public func combiningFunction(functions funcs: [GoSquaredAPI.CombiningFunction]) -> URLRequest {
        let functions: [(name: String, params: [URLQueryItem])] = funcs.enumerated().map { index, function in
            let name = "\(function.endpoint):\(index)"
            let params = function.parameters.map({ URLQueryItem(name: "\(name):\($0)", value: $1) })

            return (name, params)
        }

        let functionList = functions.map({ $0.name }).joined(separator: ",")

        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        for function in functions {
            queryItems.append(contentsOf: function.params)
        }

        let path = "\(self.basePath)/\(functionList)"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

}
