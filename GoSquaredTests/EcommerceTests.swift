//
//  EcommerceTests.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
import GoSquared

class EcommerceTests: XCTestCase {

	let gosquared = GoSquared(key: "demo", token: "GSN-106863-S")


	func testAggregate() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.aggregate({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testBrowser() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.browser({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testCategory() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.category({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testCountry() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.country({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testLanguage() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.language({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testOs() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.os({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testProduct() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.product({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testSources() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.sources({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

	func testTransaction() {
		let ex = expectationWithDescription("Handler called")

		gosquared.ecommerce.transaction({ response, error in
			ex.fulfill()
			XCTAssertNil(error)
		})

		waitForExpectationsWithTimeout(2.5, handler: nil)
	}

}
