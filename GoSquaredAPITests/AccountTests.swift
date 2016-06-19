//
//  AccountTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
@testable import GoSquaredAPI

class AccountTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")


    func testAlertPreferences() {
        let request = gosquared.account.alertPreferences()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/alertPreferences")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testBlocked() {
        let request = gosquared.account.blocked()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testReportPreferences() {
        let request = gosquared.account.reportPreferences()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/reportPreferences")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSharedUsers() {
        let request = gosquared.account.sharedUsers()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/sharedUsers")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSites() {
        let request = gosquared.account.sites()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/sites")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testTaggedVisitors() {
        let request = gosquared.account.taggedVisitors()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/taggedVisitors")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

}
