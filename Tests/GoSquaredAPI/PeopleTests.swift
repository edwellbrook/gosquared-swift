//
//  PeopleTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Edward Wellbrook. All rights reserved.
//

import XCTest
import GoSquaredAPI

class PeopleTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")


    func testDevices() {
        let request = gosquared.people.devices(limit: 0, offset: 0)

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/devices")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0,0")
    }

    func testDevice() {
        let request = gosquared.people.device(deviceId: "TEST_DEVICE")

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/devices/TEST_DEVICE")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testEventTypes() {
        let request = gosquared.people.eventTypes()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/eventTypes")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSearch() {
        let request = gosquared.people.search("TESTER", parameters: [
            "fields": "id"
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/people")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&query=TESTER&fields=id")
    }

    func testPersonDetails() {
        let request = gosquared.people.details(personId: "TEST_PERSON")

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/people/TEST_PERSON")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testPersonDevices() {
        let request = gosquared.people.devices(personId: "TEST_PERSON", limit: 0, offset: 0)

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/people/TEST_PERSON/devices")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0,0")
    }

    func testPersonFeed() {
        let request = gosquared.people.feed(personId: "TEST_PERSON", parameters: [
            "query": "Signed Up"
        ])

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/people/TEST_PERSON/feed")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&query=Signed%20Up")
    }

    func testSmartGroups() {
        let request = gosquared.people.smartGroups()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/people/v1/smartgroups")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

}
