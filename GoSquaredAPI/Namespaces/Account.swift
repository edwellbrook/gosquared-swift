//
//  Account.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015-2016 Edward Wellbrook. All rights reserved.
//

import Foundation

public class Account {

    private let client: GoSquaredAPI
    private let baseURL: String
    private let stagingBaseURL: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/account/v1/"
        self.stagingBaseURL = "\(GoSquaredAPI.stagingBaseURL)/account/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/alertPreferences/
    //
    public func alertPreferences() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/alertPreferences/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/blocked/
    //
    public func blocked() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/blocked/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/reportPreferences/
    //
    public func reportPreferences() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/reportPreferences/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sharedUsers/
    //
    public func sharedUsers() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/sharedUsers/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sites/
    //
    public func sites() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/sites/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/taggedVisitors/
    //
    public func taggedVisitors() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/taggedVisitors/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_webhooks
    //
    public func webhooks() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/webhooks/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http/#add_a_webhook
    // 
    public func addWebhook(_ webhookUrl: String, name: String = "") -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        let body = [
            "name": name,
            "url": webhookUrl
        ]

        return POSTRequest("\(baseURL)/webhooks/", query: query, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_triggers_for_a_webhook
    // 
    public func webhookTriggers(_ webhookId: Int) -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/triggers/", query: query)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#add_an_trigger_to_a_webhook
    // 
    public func addWebhookTrigger(_ webhookId: Int, trigger: String, value: String) -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        let body = [
            "trigger": trigger,
            "value": value
        ]

        return POSTRequest("\(baseURL)/webhooks/\(webhookId)/triggers/", query: query, body: body)
    }

    // 
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#remove_an_trigger_from_a_webhook
    //
    public func removeWebhookTrigger(_ webhookId: Int, triggerId: Int) -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return DELETERequest("\(baseURL)/webhooks/\(webhookId)/triggers/\(triggerId)/", query: query)
    }

    //
    // docs:
    // 
    //
    public func me() -> URLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return GETRequest("\(baseURL)/me/", query: query)
    }

}
