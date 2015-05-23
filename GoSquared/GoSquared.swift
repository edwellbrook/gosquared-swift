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
	let baseURL = "https://api.gosquared.com"


	public init(key: String, token: String, URLSession: NSURLSession = NSURLSession.sharedSession()) {
		self.key = key
		self.token = token
		self.URLSession = URLSession
	}

}

public class GoSquared {

	public typealias Handler = (response: AnyObject?, error: NSError?) -> Void
	public typealias CompletionHandler = (NSData!, NSURLResponse!, NSError!) -> Void


	private let config: GSConfig


	lazy public var now: Now = {
		return Now(config: self.config)
	}()


	public init(config: GSConfig) {
		self.config = config
	}

	public static func handleResponse(handler: GoSquared.Handler) -> GoSquared.CompletionHandler {
		return { (data: NSData!, response: NSURLResponse!, error: NSError!) in
			if error != nil {
				handler(response: nil, error: error)
			}

			var err: NSError?
			let json: AnyObject? = NSJSONSerialization.JSONObjectWithData(data, options: .AllowFragments, error: &err)

			handler(response: json, error: err)
		}
	}

}
