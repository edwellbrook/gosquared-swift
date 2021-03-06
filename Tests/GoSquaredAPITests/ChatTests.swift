//
//  ChatTests.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2017 Edward Wellbrook. All rights reserved.
//

import XCTest
import GoSquaredAPI

class ChatTests: XCTestCase {

    let gosquared = GoSquaredAPI(apiKey: "TEST_KEY", project: "TEST_TOKEN")


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
