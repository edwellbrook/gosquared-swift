//
//  Account.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public class Account {

	private let key: String
	private let token: String
	private let client: GoSquared
	private let baseURL: String

	public init(client: GoSquared) {
		self.key = client.key
		self.token = client.token
		self.client = client
		self.baseURL = "\(GoSquared.baseURL)/account/v1/"
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/account/v1/alertPreferences/
	//
	public func alertPreferences(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/alertPreferences/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/account/v1/blocked/
	//
	public func blocked(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/blocked/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/account/v1/reportPreferences/
	//
	public func reportPreferences(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/reportPreferences/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/account/v1/sharedUsers/
	//
	public func sharedUsers(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/sharedUsers/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/account/v1/sites/
	//
	public func sites(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/sites/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

	//
	// docs:
	// https://www.gosquared.com/developer/api/account/v1/taggedVisitors/
	//
	public func taggedVisitors(completionHandler: GoSquared.Handler) {
		let url = NSURL(string: "\(baseURL)/taggedVisitors/?api_key=\(key)&site_token=\(token)")!
		let req = NSURLRequest(URL: url)
		client.makeRequest(req, handler: completionHandler)
	}

}
