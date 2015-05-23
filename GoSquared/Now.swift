//
//  Now.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Now {

	private let config: GSConfig
	private let nowURL: String

	public init(config: GSConfig) {
		self.config = config
		self.nowURL = "\(config.baseURL)/now/v3/"
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/aggregateStats/
	//
	public func aggregateStats(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/aggregateStats/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/campaigns/
	//
	public func campaigns(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/campaigns/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/concurrents/
	//
	public func concurrents(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/concurrents/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/engagement/
	//
	public func engagement(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/engagement/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs
	// https://www.gosquared.com/developer/api/now/v3/geo/
	//
	public func geo(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/geo/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/overview/
	//
	public func overview(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/overview/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/pages/
	//
	public func pages(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/pages/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/sources/
	//
	public func sources(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/sources/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/now/v3/timeSeries/
	//
	public func timeSeries(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/timeSeries/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

	//
	// visitors:
	// https://www.gosquared.com/developer/api/now/v3/visitors/
	//
	public func visitors(handler: GoSquared.Handler) {
		let url = NSURL(string: "\(nowURL)/visitors/?api_key=\(config.key)&site_token=\(config.token)")!
		let req = NSURLRequest(URL: url)
		let task = config.URLSession.dataTaskWithRequest(req, completionHandler: GoSquared.handleResponse(handler))
		task.resume()
	}

}
