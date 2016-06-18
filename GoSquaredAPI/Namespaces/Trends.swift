//
//  Trends.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Trends {

    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()


    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/trends/v2"
    }

    //
    // docs:
    //
    //
    public func aggregate(from: Date, to: Date) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "from", value: dateFormatter.string(from: from)),
            URLQueryItem(name: "to", value: dateFormatter.string(from: to)),
            URLQueryItem(name: "interval", value: "hour")
        ]

        return GETRequest("\(self.basePath)/aggregate/", queryItems: queryItems)
    }

    public func aggregateFunction(from: Date, to: Date) -> GoSquaredAPI.CombiningFunction {
        return GoSquaredAPI.CombiningFunction(endpoint: "aggregate", params: [
            "from": dateFormatter.string(from: from),
            "to": dateFormatter.string(from: to),
            "dateFormat": "YYYY-MM-DD HH:mm:ss",
            "interval": "hour"
        ])
    }

    //
    // docs:
    //
    //
    public func page(_ from: Date, to: Date) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "site_token", value: self.client.token),
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "from", value: dateFormatter.string(from: from)),
            URLQueryItem(name: "to", value: dateFormatter.string(from: to)),
            URLQueryItem(name: "interval", value: "hour")
        ]

        return GETRequest("\(self.basePath)/page/", queryItems: queryItems)
    }

    public func pageFunction(_ from: Date, to: Date) -> GoSquaredAPI.CombiningFunction {
        return GoSquaredAPI.CombiningFunction(endpoint: "page", params: [
            "from": dateFormatter.string(from: from),
            "to": dateFormatter.string(from: to),
            "dateFormat": "YYYY-MM-DD HH:mm:ss",
            "limit": "0,3"
        ])
    }

    //
    // docs:
    //
    //
    public func executeCombiningFunction(_ funcs: [GoSquaredAPI.CombiningFunction]) -> URLRequest {
        let functions: [(name: String, params: [URLQueryItem])] = funcs.enumerated().map { idx, fn in
            let name = "\(fn.endpoint):\(idx)"
            let params = fn.params.map({ key, val in
                return URLQueryItem(name: "\(name):\(key)", value: val)
            })

            return (name, params)
        }

        let functionList = functions.map({ $0.name }).joined(separator: ",")

        var queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        for function in functions {
            queryItems.append(contentsOf: function.params)
        }

        return GETRequest("\(self.basePath)/\(functionList)/", queryItems: queryItems)
    }

}
