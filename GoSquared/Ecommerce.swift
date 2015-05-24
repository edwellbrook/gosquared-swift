//
//  Ecommerce.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Ecommerce {

	private let key: String
	private let token: String
	private let client: GoSquared
	private let baseURL: String

	public init(client: GoSquared) {
		self.key = client.config.key
		self.token = client.config.token
		self.client = client
		self.baseURL = "\(GSConfig.baseURL)/ecommerce/v1/"
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/aggregate/
	//
	public func aggregate(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/aggregate/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/browser/
	//
	public func browser(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/browser/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/category/
	//
	public func category(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/category/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/country/
	//
	public func country(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/country/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/language/
	//
	public func language(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/language/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/os/
	//
	public func os(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/os/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/product/
	//
	public func product(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/product/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/sources/
	//
	public func sources(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/sources/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/ecommerce/v1/transaction/
	//
	public func transaction(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/transaction/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

}
