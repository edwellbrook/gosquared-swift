//
//  Now.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Now {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/now/v3"
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/now/browsers/http/#retrieve_list_of_browsers
    //
    public func browsers() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/browsers"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/campaigns/
    //
    public func campaigns() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/campaigns"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/concurrents/
    //
    public func concurrents() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/concurrents"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/engagement/
    //
    public func engagement() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/engagement"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs
    // https://www.gosquared.com/developer/api/now/v3/geo/
    //
    public func geo() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/geo"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/overview/
    //
    public func overview() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/overview"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/pages/
    //
    public func pages() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/pages"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/sources/
    //
    public func sources() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/sources"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/timeSeries/
    //
    public func timeSeries() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/timeSeries"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/now/v3/visitors/
    //
    public func visitors() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/visitors"
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
