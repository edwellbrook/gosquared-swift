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


    public var key: String?
    public var token: String?

    static var URLSession = Foundation.URLSession.shared()

    lazy public var account: Account = Account(client: self)
    lazy public var chat: Chat = Chat(client: self)
    lazy public var ecommerce: Ecommerce = Ecommerce(client: self)
    lazy public var now: Now = Now(client: self)
    lazy public var tracking: Tracking = Tracking(client: self)
    lazy public var trends: Trends = Trends(client: self)
    lazy public var people: People = People(client: self)


    public init(key: String? = nil, token: String? = nil) {
        self.key = key
        self.token = token
    }


    public static func performRequest(_ request: URLRequest, completionHandler: Handler?) -> URLSessionDataTask? {
        return GoSquaredAPI.URLSession.dataTask(with: request) { (data, response, error) in
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

internal func GETRequest(path: String, queryItems: [URLQueryItem]) -> URLRequest {
    let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

    return URLRequest(method: "GET", url: components.url!)
}

internal func DELETERequest(path: String, queryItems: [URLQueryItem]) -> URLRequest {
    let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

    return URLRequest(method: "DELETE", url: components.url!)
}

internal func POSTRequest(path: String, queryItems: [URLQueryItem], body: AnyObject) -> URLRequest {
    let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

    return URLRequest(method: "POST", url: components.url!, body: body)
}
