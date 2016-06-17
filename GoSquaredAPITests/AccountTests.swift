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

    let gosquared = GoSquaredAPI(key: "demo", token: "GSN-106863-S")


    func testAlertPreferences() {
        let ex = expectation(withDescription: "Handler called")
        let request = gosquared.account.alertPreferences()

        GoSquaredAPI.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testBlocked() {
        let ex = expectation(withDescription: "Handler called")
        let request = gosquared.account.blocked()

        GoSquaredAPI.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testReportPreferences() {
        let ex = expectation(withDescription: "Handler called")
        let request = gosquared.account.reportPreferences()

        GoSquaredAPI.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testSharedUsers() {
        let ex = expectation(withDescription: "Handler called")
        let request = gosquared.account.sharedUsers()

        GoSquaredAPI.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testSites() {
        let ex = expectation(withDescription: "Handler called")
        let request = gosquared.account.sites()

        GoSquaredAPI.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

    func testTaggedVisitors() {
        let ex = expectation(withDescription: "Handler called")
        let request = gosquared.account.taggedVisitors()

        GoSquaredAPI.performRequest(request, completionHandler: { response, error in
            ex.fulfill()
            XCTAssertNil(error)
        })?.resume()

        waitForExpectations(withTimeout: 2.5, handler: nil)
    }

}
