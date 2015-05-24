//
//  Track.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Tracking {

	private let key: String
	private let token: String
	private let client: GoSquared
	private let baseURL: String

	public init(client: GoSquared) {
		self.key = client.key
		self.token = client.token
		self.client = client
		self.baseURL = "\(GoSquared.baseURL)/tracking/v1/"
	}

	//
	// docs:
	// https://www.gosquared.com/docs/tracking/api/http#identify
	//
	public func identify(id: String, properties: [String: AnyObject], completionHandler: GoSquared.Handler? = nil) {
		let url = NSURL(string: "\(baseURL)/identify/?api_key=\(key)&site_token=\(token)")!
		let req = NSMutableURLRequest(URL: url)
		let data = ["person_id": id, "properties": properties]

		if let body = NSJSONSerialization.dataWithJSONObject(data, options: .allZeros, error: nil) {
			req.setValue("application/json", forHTTPHeaderField: "Content-Type")
			req.HTTPMethod = "POST"
			req.HTTPBody = body
		}
		
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/docs/tracking/api/http#properties
	//
	public func properties(id: String, properties: [String: AnyObject], completionHandler: GoSquared.Handler? = nil) {
		let url = NSURL(string: "\(baseURL)/properties/?api_key=\(key)&site_token=\(token)")!
		let req = NSMutableURLRequest(URL: url)
		let payload = ["person_id": id, "properties": properties]

		if let body = NSJSONSerialization.dataWithJSONObject(payload, options: .allZeros, error: nil) {
			req.setValue("application/json", forHTTPHeaderField: "Content-Type")
			req.HTTPMethod = "POST"
			req.HTTPBody = body
		}

		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/docs/tracking/api/http#events
	//
	public func event(name: String, data: [String: AnyObject]? = nil, completionHandler: GoSquared.Handler? = nil) {
		let url = NSURL(string: "\(baseURL)/event/?api_key=\(key)&site_token=\(token)")!
		let req = NSMutableURLRequest(URL: url)
		var payload: [String: AnyObject] = ["event": name]

		if let additional = data {
			payload.updateValue(additional, forKey: "data")
		}

		if let body = NSJSONSerialization.dataWithJSONObject(payload, options: .allZeros, error: nil) {
			req.setValue("application/json", forHTTPHeaderField: "Content-Type")
			req.HTTPMethod = "POST"
			req.HTTPBody = body
		}

		client.makeRequest(req, handler: completionHandler)
	}

	public func userEvent(id: String, name: String, data: [String: AnyObject]? = nil, completionHandler: GoSquared.Handler? = nil) {
		let url = NSURL(string: "\(baseURL)/event/?api_key=\(key)&site_token=\(token)")!
		let req = NSMutableURLRequest(URL: url)
		var payload: [String: AnyObject]

		if let additional = data {
			payload = ["person_id": id, "event": ["name": name, "event": additional]]
		} else {
			payload = ["person_id": id, "event": ["name": name]]
		}

		if let body = NSJSONSerialization.dataWithJSONObject(payload, options: .allZeros, error: nil) {
			req.setValue("application/json", forHTTPHeaderField: "Content-Type")
			req.HTTPMethod = "POST"
			req.HTTPBody = body
		}

		client.makeRequest(req, handler: completionHandler)
	}

}
