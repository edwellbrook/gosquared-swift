//
//  NowTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 22/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
@testable import GoSquaredAPI

class NowTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "demo", token: "GSN-106863-S")


    func testAggregateStats() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.aggregateStats()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testCampaigns() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.campaigns()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testConcurrents() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.concurrents()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testEngagement() {
        let ex = expectationWithDescription("Handler called")
let request = gosquared.now.engagement()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testGeo() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.geo()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testOverview() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.overview()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testPages() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.pages()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testSources() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.sources()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testTimeSeries() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.timeSeries()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testVisitors() {
        let ex = expectationWithDescription("Handler called")
        let request = gosquared.now.visitors()

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

}
