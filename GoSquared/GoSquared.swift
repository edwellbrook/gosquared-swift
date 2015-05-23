//
//  GoSquared.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct GSConfig {

	let key: String
	let token: String
	let URLSession: NSURLSession
	static let baseURL = "https://api.gosquared.com"


	public init(key: String, token: String, URLSession: NSURLSession = NSURLSession.sharedSession()) {
		self.key = key
		self.token = token
		self.URLSession = URLSession
	}

}

public class GoSquared {

	public typealias Handler = (response: AnyObject?, error: NSError?) -> Void


	let config: GSConfig


	lazy public var now: Now = {
		return Now(client: self)
	}()

	lazy public var ecommerce: Ecommerce = {
		return Ecommerce(client: self)
	}()


	public init(config: GSConfig) {
		self.config = config
	}

	public func makeRequest(url: NSURL, handler: GoSquared.Handler) {
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: { (data: NSData!, response: NSURLResponse!, error: NSError!) in
			if error != nil {
				handler(response: nil, error: error)
			}

			var err: NSError?
			let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments, error: &err)

			handler(response: json, error: err)
		})
		task.resume()
	}

}
