//
//  EcommerceTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015-2017 Edward Wellbrook. All rights reserved.
//

import XCTest
import GoSquaredAPI

class EcommerceTests: XCTestCase {

    let gosquared = GoSquaredAPI(apiKey: "TEST_KEY", project: "TEST_TOKEN")


    func testAggregate() {
        let request = gosquared.ecommerce.aggregate(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/aggregate")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testBrowser() {
        let request = gosquared.ecommerce.browsers(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/browser")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testCategory() {
        let request = gosquared.ecommerce.categories(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/category")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testCountry() {
        let request = gosquared.ecommerce.countries(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/country")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testLanguage() {
        let request = gosquared.ecommerce.languages(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/language")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testOs() {
        let request = gosquared.ecommerce.os(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/os")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testProduct() {
        let request = gosquared.ecommerce.products(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/product")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testSources() {
        let request = gosquared.ecommerce.sources(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/sources")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testTransaction() {
        let request = gosquared.ecommerce.transactions(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/ecommerce/v1/transaction")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

}
