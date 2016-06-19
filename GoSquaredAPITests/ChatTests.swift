//
//  ChatTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Go Squared Ltd. All rights reserved.
//

import XCTest
@testable import GoSquaredAPI

class ChatTests: XCTestCase {

    let gosquared = GoSquaredAPI(key: "TEST_KEY", token: "TEST_TOKEN")


    func testChats() {
        let request = gosquared.chat.chats()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/chat/v1/chats")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

    func testMessages() {
        let request = gosquared.chat.messages(personId: "0", limit: 0, offset: 0)

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/chat/v1/chats/0/messages")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN&limit=0&offset=0")
    }

    func testStream() {
        let request = gosquared.chat.stream()

        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.url?.path, "/chat/v1/stream")
        XCTAssertEqual(request.url?.query, "api_key=TEST_KEY&site_token=TEST_TOKEN")
    }

}
