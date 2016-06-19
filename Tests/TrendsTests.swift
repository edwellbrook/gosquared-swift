//
//  TrendsTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Edward Wellbrook. All rights reserved.
//

import XCTest
import GoSquaredAPI

class TrendsTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")

    
    func testAggregate() {
        let request = gosquared.trends.aggregate(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/aggregate")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testBrowser() {
        let request = gosquared.trends.browsers(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/browser")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testCategory() {
        let request = gosquared.trends.categories(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/category")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testCountry() {
        let request = gosquared.trends.countries(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/country")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testEvent() {
        let request = gosquared.trends.events(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/event")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testLanguage() {
        let request = gosquared.trends.languages(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/language")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testOrganisation() {
        let request = gosquared.trends.organisations(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/organisation")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testOS() {
        let request = gosquared.trends.os(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/os")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testPage() {
        let request = gosquared.trends.pages(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/page")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testBasePath() {
        let request = gosquared.trends.basePaths(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/path1")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testProduct() {
        let request = gosquared.trends.products(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/product")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testScreenDimensions() {
        let request = gosquared.trends.screenDimensions(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/screenDimensions")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testSources() {
        let request = gosquared.trends.sources(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/sources")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testTransaction() {
        let request = gosquared.trends.transactions(parameters: [
            "limit": String(0)
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/transaction")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0")
    }

    func testCombiningFunctions() {
        let request = gosquared.trends.combiningFunction(functions: [
            GoSquaredAPI.CombiningFunction(endpoint: "browser", parameters: [ "limit": "0" ]),
            GoSquaredAPI.CombiningFunction(endpoint: "country", parameters: [ "limit": "0" ])
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/trends/v2/browser:0,country:1")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&browser:0:limit=0&country:1:limit=0")
    }

}
