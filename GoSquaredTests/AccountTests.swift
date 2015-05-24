//
//  AccountTests.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
import GoSquared

class AccountTests: XCTestCase {

	let gosquared = GoSquared(key: "demo", token: "GSN-106863-S")


	func testAlertPreferences() {
		let ex = expectationWithDescription("Handler called")

		gosquared.account.alertPreferences({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testBlocked() {
		let ex = expectationWithDescription("Handler called")

		gosquared.account.blocked({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testReportPreferences() {
		let ex = expectationWithDescription("Handler called")

		gosquared.account.reportPreferences({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testSharedUsers() {
		let ex = expectationWithDescription("Handler called")

		gosquared.account.sharedUsers({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testSites() {
		let ex = expectationWithDescription("Handler called")

		gosquared.account.sites({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testTaggedVisitors() {
		let ex = expectationWithDescription("Handler called")

		gosquared.account.taggedVisitors({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}


}
