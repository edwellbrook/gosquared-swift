//
//  EcommerceTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
@testable import GoSquaredAPI

class EcommerceTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "demo", token: "GSN-106863-S")


    func testAggregate() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.aggregate()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testBrowser() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.browser()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testCategory() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.category()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testCountry() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.country()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testLanguage() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.language()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testOs() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.os()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testProduct() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.product()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testSources() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.sources()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testTransaction() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.ecommerce.transaction()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

}
