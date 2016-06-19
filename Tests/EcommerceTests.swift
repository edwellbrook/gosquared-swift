//
//  EcommerceTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
import GoSquaredAPI

class EcommerceTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")


    func testAggregate() {
        let request = gosquared.ecommerce.aggregate()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/aggregate")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testBrowser() {
        let request = gosquared.ecommerce.browser()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/browser")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testCategory() {
        let request = gosquared.ecommerce.category()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/category")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testCountry() {
        let request = gosquared.ecommerce.country()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/country")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testLanguage() {
        let request = gosquared.ecommerce.language()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/language")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testOs() {
        let request = gosquared.ecommerce.os()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/os")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testProduct() {
        let request = gosquared.ecommerce.product()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/product")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSources() {
        let request = gosquared.ecommerce.sources()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/sources")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testTransaction() {
        let request = gosquared.ecommerce.transaction()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/transaction")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

}
