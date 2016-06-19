//
//  AccountTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import XCTest
import GoSquaredAPI

class AccountTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")


    func testBlockedItems() {
        let request = gosquared.account.blockedItems()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testIsBotBlockingEnabled() {
        let request = gosquared.account.isBotBlockingEnabled()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/bots")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSetBotBlockingEnabled() {
        let request = gosquared.account.setBotBlockingEnabled(enabled: true)

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/bots")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testBlockedIPs() {
        let request = gosquared.account.blockedIPs()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/ips")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSetBlockedIPs() {
        let request = gosquared.account.setBlockedIPs(ipAddresses: ["127.0.0.1"])

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/ips")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testUnblockIPs() {
        let request = gosquared.account.unblockIPs(ipAddresses: ["127.0.0.1"])

        XCTAssertEqual(request.httpMethod, "DELETE")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/ips")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testBlockedVisitors() {
        let request = gosquared.account.blockedVisitors()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/visitors")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testSetBlockedVisitors() {
        let request = gosquared.account.setBlockedVisitors(visitorIds: ["0"])

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/visitors")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testUnblockVisitors() {
        let request = gosquared.account.unblockVisitors(visitorIds: ["0"])

        XCTAssertEqual(request.httpMethod, "DELETE")
        XCTAssertEqual(request.url?.path, "/account/v1/blocked/visitors")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
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

    func testProjects() {
        let request = gosquared.account.projects()

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

    func testWebhooks() {
        let request = gosquared.account.webhooks()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/webhooks")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testAddWebhook() {
        let request = gosquared.account.addWebhook("TEST_WEBHOOK_URL")

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/account/v1/webhooks")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testWebhookTriggers() {
        let request = gosquared.account.webhookTriggers(webhookId: 0)

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/webhooks/0/triggers")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testAddWebhookTrigger() {
        let request = gosquared.account.addWebhookTrigger(webhookId: 0, trigger: "traffic_spike", value: 20)

        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.url?.path, "/account/v1/webhooks/0/triggers")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
        XCTAssertEqual(request.value(forHTTPHeaderField: "Content-Type"), "application/json")
        XCTAssertNotNil(request.httpBody)
    }

    func testRemoveWebhookTrigger() {
        let request = gosquared.account.removeWebhookTrigger(0, triggerId: 0)

        XCTAssertEqual(request.httpMethod, "DELETE")
        XCTAssertEqual(request.url?.path, "/account/v1/webhooks/0/triggers/0")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testMe() {
        let request = gosquared.account.me()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/account/v1/me")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY")
    }

}
