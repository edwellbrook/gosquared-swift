//
//  TrackTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 24/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import XCTest
import GoSquaredAPI

class TrackingTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")


    func testIdentify() {
        let request = gosquared.tracking.identify(personId: "test-node-gosquared", properties: [
            "name": "Node GoSquared",
            "email": "test-node@gosquared.com",
            "custom": [
                "test_node_gosquared": "identify"
            ]
        ])

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/tracking/v1/identify")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testEvent() {
        let request = gosquared.tracking.event("Event Name", properties: [
            "additional": "data"
        ])

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/tracking/v1/event")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testUserEvent() {
        let request = gosquared.tracking.event("Event Name", personId: "test-node-gosquared", properties: [
            "additional": "data"
        ])

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/tracking/v1/event")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

}
