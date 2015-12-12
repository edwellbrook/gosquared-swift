//
//  TrackTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 24/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
@testable import GoSquaredAPI

class TrackingTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "demo", token: "GSN-106863-S")


    func testIdentify() {
        let ex = expectationWithDescription("Handler called")
        let props: [String: AnyObject] = [
            "name": "Node GoSquared",
            "email": "test-node@gosquared.com",
            "custom": [
                "test_node_gosquared": "identify"
            ]
        ]
        
        gosquared.tracking.identify("test-node-gosquared", properties: props, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testProperties() {
        let ex = expectationWithDescription("Handler called")
        let props: [String: AnyObject] = [
            "name": "Node GoSquared",
            "email": "test-node@gosquared.com",
            "custom": [
                "test_node_gosquared": "identify"
            ]
        ]

        gosquared.tracking.properties("test-node-gosquared", properties: props, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testEvent() {
        let ex = expectationWithDescription("Handler called")
        let event: [String: AnyObject] = [
            "additional": "data"
        ]

        gosquared.tracking.event("Event Name", properties: event, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

    func testUserEvent() {
        let ex = expectationWithDescription("Handler called")
        let event: [String: AnyObject] = [
            "additional": "data"
        ]

        gosquared.tracking.userEvent("test-node-gosquared", name: "Event Name", properties: event, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectationsWithTimeout(2.5, handler: nil)
    }

}
