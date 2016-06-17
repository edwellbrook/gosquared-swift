//
//  Trends.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 27/11/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Trends {

    private let key: String
    private let token: String
    private let client: GoSquaredAPI
    private let baseURL: String

    internal init(client: GoSquaredAPI) {
        self.key = client.key
        self.token = client.token
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/trends/v2"
    }

    lazy var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()

    //
    // docs:
    //
    //
    public func aggregate(_ from: Date, to: Date) -> URLRequest {
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "from": dateFormatter.string(from: from),
            "to": dateFormatter.string(from: to),
            "interval": "hour"
        ]

        return GETRequest("\(baseURL)/aggregate/", query: query)
    }

    public func aggregateFunction(_ from: Date, to: Date) -> GoSquaredAPI.CombiningFunction {
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
        let query = [
            "site_token": self.client.token,
            "api_key": self.client.key,
            "from": dateFormatter.string(from: from),
            "to": dateFormatter.string(from: to),
            "interval": "hour"
        ]

        return GETRequest("\(baseURL)/page/", query: query)
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
    public func executeCombiningFunction(_ functions: [GoSquaredAPI.CombiningFunction], completionHandler: GoSquaredAPI.Handler) -> URLSessionDataTask? {
        let funcs: [(name: String, params: String)] = functions.enumerated().map { idx, fn in
            let name = "\(fn.endpoint):\(idx)"
            let params = fn.params.map({ key, val -> String in
                return "\(name):\(key)=\(val)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            })

            return (name, params.joined(separator: "&"))
        }

        let fns = funcs.map({ $0.name }).joined(separator: ",")
        let params = funcs.map({ $0.params }).joined(separator: "&")
        let req = GETRequest("\(baseURL)/\(fns)/?api_key=\(key)&site_token=\(token)&\(params)", query: [:])

        return GoSquaredAPI.performRequest(req, completionHandler: completionHandler)
    }

}
