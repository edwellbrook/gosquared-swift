//
//  GoSquared.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class GoSquaredAPI {

    public typealias Handler = (response: AnyObject?, error: NSError?) -> Void


    public struct CombiningFunction {
        let endpoint: String
        let params: [String: String]
    }


    let key: String
    let URLSession: Foundation.URLSession
    public var token: String

    static let baseURL = "https://api.gosquared.com"
    static let stagingBaseURL = "https://api-staging.gosquared.com"

    lazy public var account: Account = Account(client: self)
    lazy public var chat: Chat = Chat(client: self)
    lazy public var ecommerce: Ecommerce = Ecommerce(client: self)
    lazy public var now: Now = Now(client: self)
    lazy public var tracking: Tracking = Tracking(client: self)
    lazy public var trends: Trends = Trends(client: self)
    lazy public var people: People = People(client: self)


    public init(key: String, token: String = "", URLSession: Foundation.URLSession = Foundation.URLSession.shared()) {
        self.key = key
        self.token = token
        self.URLSession = URLSession
    }


    public func performRequest(_ request: URLRequest, completionHandler: Handler?) -> URLSessionDataTask? {
        return self.URLSession.dataTask(with: request) { (data, response, error) in
            if error != nil {
                completionHandler?(response: nil, error: error)
                return
            }

            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments)
                completionHandler?(response: json, error: nil)
            } catch let err as NSError {
                completionHandler?(response: nil, error: err)
            }
        }
    }
    
}

internal func GETRequest(_ URL: String, query: [String: AnyObject]) -> URLRequest {
    return URLRequest(url: buildURL(URL, query: query))
}

internal func DELETERequest(_ URL: String, query: [String: AnyObject]) -> URLRequest {
    let request = NSMutableURLRequest(url: buildURL(URL, query: query))
    request.httpMethod = "DELETE"

    return request as URLRequest
}

internal func POSTRequest(_ URL: String, query: [String: AnyObject], body: AnyObject) -> URLRequest {
    let request = NSMutableURLRequest(url: buildURL(URL, query: query))
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    do {
        let data = try JSONSerialization.data(withJSONObject: body, options: JSONSerialization.WritingOptions(rawValue: 0))
        request.httpBody = data
    } catch _ {
    }

    return request as URLRequest
}

private func buildURL(_ baseURL: String, query: [String: AnyObject]) -> URL {
    guard query.count > 0 else {
        return URL(string: baseURL)!
    }

    let queryString = "?" + query.map { key, val -> String in
        return "\(key)=\(val)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    }.joined(separator: "&")

    return URL(string: baseURL + queryString)!
}
