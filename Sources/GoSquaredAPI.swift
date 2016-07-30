//
//  GoSquaredAPI.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class GoSquaredAPI {

    public typealias Handler = (response: AnyObject?, error: NSError?) -> Void

    public static let CommonDateFormatter = DateFormatter(dateFormat: "yyyy-MM-dd HH:mm:ss")
    public static let CommonDateFormat = "YYYY-MM-DD HH:mm:ss"

    public struct CombiningFunction {
        let endpoint: String
        let parameters: [String: String]

        public init(endpoint: String, parameters: [String: String]) {
            self.endpoint = endpoint
            self.parameters = parameters
        }
    }


    public var apiKey: String?
    public var project: String?
    public var bearerToken: String?

    static var urlSession = URLSession.shared

    lazy public var account: Account = Account(client: self)
    lazy public var chat: Chat = Chat(client: self)
    lazy public var ecommerce: Ecommerce = Ecommerce(client: self)
    lazy public var now: Now = Now(client: self)
    lazy public var trends: Trends = Trends(client: self)
    lazy public var people: People = People(client: self)


    public init(apiKey: String?, project: String? = nil) {
        self.apiKey = apiKey
        self.project = project
    }

    public init(bearerToken: String?, project: String? = nil) {
        self.bearerToken = bearerToken
        self.project = project
    }


    public static func performRequest(_ request: URLRequest, completionHandler: Handler?) {
        GoSquaredAPI.urlSession.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
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
        }.resume()
    }
    
}
