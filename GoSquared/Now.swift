//
//  Now.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Now {

	private let key: String
	private let token: String
	private let client: GoSquared
	private let baseURL: String

	public init(client: GoSquared) {
		self.key = client.config.key
		self.token = client.config.token
		self.client = client
		self.baseURL = "\(GSConfig.baseURL)/now/v3/"
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/aggregateStats/
	//
	public func aggregateStats(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/aggregateStats/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/campaigns/
	//
	public func campaigns(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/campaigns/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/concurrents/
	//
	public func concurrents(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/concurrents/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/engagement/
	//
	public func engagement(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/engagement/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs
	// https://www.gosquared.com/developer/api/now/v3/geo/
	//
	public func geo(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/geo/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/overview/
	//
	public func overview(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/overview/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/pages/
	//
	public func pages(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/pages/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/sources/
	//
	public func sources(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/sources/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/timeSeries/
	//
	public func timeSeries(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/timeSeries/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// visitors:
	// https://www.gosquared.com/developer/api/now/v3/visitors/
	//
	public func visitors(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/visitors/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

}
