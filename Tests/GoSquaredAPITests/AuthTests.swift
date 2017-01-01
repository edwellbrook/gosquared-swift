//
//  AuthTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 01/01/2017.
//  Copyright (c) 2017 Edward Wellbrook. All rights reserved.
//

import XCTest
import GoSquaredAPI

class AuthTests: XCTestCase {

    let gosquared = GoSquaredAPI(apiKey: "TEST_KEY", project: "TEST_TOKEN")

    func testLogIn() {
        let request = gosquared.auth.logIn(email: "TEST_EMAIL", password: "TEST_PASSWORD", authToken: nil, scope: [])

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/auth/v1/login")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testRefreshToken() {
        let request = gosquared.auth.refreshToken("TEST_TOKEN")

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/auth/v1/refresh")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

}
