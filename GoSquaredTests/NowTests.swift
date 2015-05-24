//
//  NowTests.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
import GoSquared

class NowTests: XCTestCase {

	let gosquared = GoSquared(key: "demo", token: "GSN-106863-S")


	func testAggregateStats() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.aggregateStats({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testCampaigns() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.campaigns({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testConcurrents() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.concurrents({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testEngagement() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.engagement({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testGeo() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.geo({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testOverview() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.overview({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testPages() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.pages({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testSources() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.sources({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testTimeSeries() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.timeSeries({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testVisitors() {
		let ex = expectationWithDescription("Handler called")

		gosquared.now.visitors({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

}
