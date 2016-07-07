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
        let parameters: [String: String]

        public init(endpoint: String, parameters: [String: String]) {
            self.endpoint = endpoint
            self.parameters = parameters
        }
    }


    public var key: String?
    public var token: String?

    static var urlSession = URLSession.shared()

    lazy public var account: Account = Account(client: self)
    lazy public var chat: Chat = Chat(client: self)
    lazy public var ecommerce: Ecommerce = Ecommerce(client: self)
    lazy public var now: Now = Now(client: self)
    lazy public var trends: Trends = Trends(client: self)
    lazy public var people: People = People(client: self)


    public init(key: String? = nil, token: String? = nil) {
        self.key = key
        self.token = token
    }


    public static func performRequest(_ request: URLRequest, completionHandler: Handler?) -> URLSessionDataTask? {
        return GoSquaredAPI.urlSession.dataTask(with: request) { (data, response, error) in
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
