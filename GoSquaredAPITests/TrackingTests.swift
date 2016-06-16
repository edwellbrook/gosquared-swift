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
        let ex = expectation(withDescription: "Handler called")
        let props: [String: AnyObject] = [
            "name": "Node GoSquared",
            "email": "test-node@gosquared.com",
            "custom": [
                "test_node_gosquared": "identify"
            ]
        ]
        let request = gosquared.tracking.identify("test-node-gosquared", properties: props)

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testProperties() {
        let ex = expectation(withDescription: "Handler called")
        let props: [String: AnyObject] = [
            "name": "Node GoSquared",
            "email": "test-node@gosquared.com",
            "custom": [
                "test_node_gosquared": "identify"
            ]
        ]
        let request = gosquared.tracking.properties("test-node-gosquared", properties: props)

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testEvent() {
        let ex = expectation(withDescription: "Handler called")
        let event: [String: AnyObject] = [
            "additional": "data"
        ]
        let request = gosquared.tracking.event("Event Name", properties: event)

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testUserEvent() {
        let ex = expectation(withDescription: "Handler called")
        let event: [String: AnyObject] = [
            "additional": "data"
        ]
        let request = gosquared.tracking.userEvent("test-node-gosquared", name: "Event Name", properties: event)

        gosquared.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

}
