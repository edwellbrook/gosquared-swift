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
    let URLSession: NSURLSession
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


    public init(key: String, token: String = "", URLSession: NSURLSession = NSURLSession.sharedSession()) {
        self.key = key
        self.token = token
        self.URLSession = URLSession
    }


    public func performRequest(request: NSURLRequest, completionHandler: Handler?) -> NSURLSessionDataTask? {
        return self.URLSession.dataTaskWithRequest(request) { (data, response, error) in
            if error != nil {
                completionHandler?(response: nil, error: error)
                return
            }

            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
                completionHandler?(response: json, error: nil)
            } catch let err as NSError {
                completionHandler?(response: nil, error: err)
            }
        }
    }
    
}

internal func GETRequest(URL: String, query: [String: AnyObject]) -> NSURLRequest {
    return NSURLRequest(URL: buildURL(URL, query: query))
}

internal func DELETERequest(URL: String, query: [String: AnyObject]) -> NSURLRequest {
    let request = NSMutableURLRequest(URL: buildURL(URL, query: query))
    request.HTTPMethod = "DELETE"

    return request
}

internal func POSTRequest(URL: String, query: [String: AnyObject], body: AnyObject) -> NSURLRequest {
    let request = NSMutableURLRequest(URL: buildURL(URL, query: query))
    request.HTTPMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")

    do {
        let data = try NSJSONSerialization.dataWithJSONObject(body, options: NSJSONWritingOptions(rawValue: 0))
        request.HTTPBody = data
    } catch _ {
    }

    return request
}

private func buildURL(baseURL: String, query: [String: AnyObject]) -> NSURL {
    guard query.count > 0 else {
        return NSURL(string: baseURL)!
    }

    let queryString = "?" + query.map { key, val -> String in
        return "\(key)=\(val)".stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())!
    }.joinWithSeparator("&")

    return NSURL(string: baseURL.stringByAppendingString(queryString))!
}
