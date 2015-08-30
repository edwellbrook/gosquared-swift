//
//  GoSquared.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class GoSquared {

    public typealias Handler = (response: AnyObject?, error: NSError?) -> Void


    let key: String
    let token: String
    let URLSession: NSURLSession
    static let baseURL = "https://api.gosquared.com"

    lazy public var account: Account = Account(client: self)
    lazy public var ecommerce: Ecommerce = Ecommerce(client: self)
    lazy public var now: Now = Now(client: self)
    lazy public var tracking: Tracking = Tracking(client: self)
    lazy public var people: People = People(client: self)


    public init(key: String, token: String, URLSession: NSURLSession = NSURLSession.sharedSession()) {
        self.key = key
        self.token = token
        self.URLSession = URLSession
    }


    func makeRequest(request: NSURLRequest, handler: GoSquared.Handler?) {
        self.URLSession.dataTaskWithRequest(request) { (data, response, error) in
            if error != nil {
                handler?(response: nil, error: error)
                return
            }

            var err: NSError?
            let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments, error: &err)

            handler?(response: json, error: err)
        }.resume()
    }

}

func iso8601(string: String) -> NSDate? {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZ"
    return formatter.dateFromString(string)
}
