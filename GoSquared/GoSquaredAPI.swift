//
//  GoSquared.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class GoSquaredAPI {

    public typealias Handler = (response: AnyObject?, error: NSError?) -> Void


    let key: String
    let URLSession: NSURLSession
    public var token: String
    static let baseURL = "https://api.gosquared.com"
    static let stagingBaseURL = "https://api-staging.gosquared.com"

    lazy public var account: Account = Account(client: self)
    lazy public var ecommerce: Ecommerce = Ecommerce(client: self)
    lazy public var now: Now = Now(client: self)
    lazy public var tracking: Tracking = Tracking(client: self)
    lazy public var people: People = People(client: self)


    public init(key: String, token: String = "", URLSession: NSURLSession = NSURLSession.sharedSession()) {
        self.key = key
        self.token = token
        self.URLSession = URLSession
    }


    private func makeRequest(request: NSURLRequest, handler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        return self.URLSession.dataTaskWithRequest(request) { (data, response, error) in
            if error != nil {
                handler?(response: nil, error: error)
                return
            }

            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
                handler?(response: json, error: nil)
            } catch let err as NSError {
                handler?(response: nil, error: err)
            }
        }
    }


    func get(url: NSURL, handler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let request = NSURLRequest(URL: url)
        return makeRequest(request, handler: handler)
    }
    

    func post(url: NSURL, data: AnyObject, handler: GoSquaredAPI.Handler?) -> NSURLSessionDataTask? {
        let request = NSMutableURLRequest(URL: url)

        do {
            let body = try NSJSONSerialization.dataWithJSONObject(data, options: NSJSONWritingOptions(rawValue: 0))

            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.HTTPMethod = "POST"
            request.HTTPBody = body

        } catch let err as NSError {
            handler?(response: nil, error: err)
        }

        return makeRequest(request, handler: handler)
    }

}

func iso8601(string: String) -> NSDate? {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
    return formatter.dateFromString(string)
}
