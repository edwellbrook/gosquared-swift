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
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/account/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/alertPreferences/
    //
    public func alertPreferences() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/alertPreferences/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/blocked/
    //
    public func blocked() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/blocked/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/reportPreferences/
    //
    public func reportPreferences() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/reportPreferences/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sharedUsers/
    //
    public func sharedUsers() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/sharedUsers/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sites/
    //
    public func sites() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/sites/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/taggedVisitors/
    //
    public func taggedVisitors() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/taggedVisitors/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_webhooks
    //
    public func webhooks() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/webhooks/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http/#add_a_webhook
    // 
    public func addWebhook(_ webhookUrl: String, name: String = "") -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        let body = [
            "name": name,
            "url": webhookUrl
        ]

        return POSTRequest(path: "\(self.basePath)/webhooks/", queryItems: queryItems, body: body)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_triggers_for_a_webhook
    // 
    public func webhookTriggers(_ webhookId: Int) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/triggers/", queryItems: queryItems)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#add_an_trigger_to_a_webhook
    // 
    public func addWebhookTrigger(_ webhookId: Int, trigger: String, value: String) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        let body = [
            "trigger": trigger,
            "value": value
        ]

        return POSTRequest(path: "\(self.basePath)/webhooks/\(webhookId)/triggers/", queryItems: queryItems, body: body)
    }

    // 
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#remove_an_trigger_from_a_webhook
    //
    public func removeWebhookTrigger(_ webhookId: Int, triggerId: Int) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return DELETERequest(path: "\(self.basePath)/webhooks/\(webhookId)/triggers/\(triggerId)/", queryItems: queryItems)
    }

    //
    // docs:
    // 
    //
    public func me() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.key),
            URLQueryItem(name: "site_token", value: self.client.token)
        ]

        return GETRequest(path: "\(self.basePath)/me/", queryItems: queryItems)
    }

}
