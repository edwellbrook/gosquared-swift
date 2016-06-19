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

        let path = "\(self.basePath)/alertPreferences/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/blocked/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/reportPreferences/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/sharedUsers/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/sites/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/taggedVisitors/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/webhooks/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
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

        let path = "\(self.basePath)/webhooks/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(method: "POST", url: components.url!, body: body)
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

        let path = "\(self.basePath)/triggers/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(method: "DELETE", url: components.url!)
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

        let path = "\(self.basePath)/webhooks/\(webhookId)/triggers/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(method: "POST", url: components.url!, body: body)
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

        let path = "\(self.basePath)/webhooks/\(webhookId)/triggers/\(triggerId)/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(method: "DELETE", url: components.url!)
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

        let path = "\(self.basePath)/me/"
        let components = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems)

        return URLRequest(url: components.url!)
    }

}
