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
    // https://www.gosquared.com/docs/api/account/blocked/http/#retrieve_blocked_items
    //
    public func blockedItems() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/blocked"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#retrieve_blocked_bots_setting
    //
    public func isBotBlockingEnabled() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/blocked/bots"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#update_blocked_bots_setting
    //
    public func setBotBlockingEnabled(enabled: Bool) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "blocked": enabled
        ]

        let path = "\(self.basePath)/blocked/bots"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#retrieve_blocked_ips
    //
    public func blockedIPs() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/blocked/ips"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#update_blocked_ips
    //
    public func blockIPs(ipAddresses: [String]) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "ip": ipAddresses.joined(separator: ",")
        ]

        let path = "\(self.basePath)/blocked/ips"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#unblock_ip_addresses
    //
    public func unblockIPs(ipAddresses: [String]) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "ip": ipAddresses.joined(separator: ",")
        ]

        let path = "\(self.basePath)/blocked/ips"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .DELETE, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#retrieve_blocked_visitors
    //
    public func blockedVisitors() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/blocked/visitors"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#update_blocked_visitors
    //
    public func blockVisitors(visitorIds: [String]) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "visitorID": visitorIds.joined(separator: ",")
        ]

        let path = "\(self.basePath)/blocked/visitors"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/blocked/http/#unblock_visitors
    //
    public func unblockVisitors(visitorIds: [String]) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "visitorID": visitorIds.joined(separator: ",")
        ]

        let path = "\(self.basePath)/blocked/visitors"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .DELETE, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/reportPreferences/
    //
    public func reportPreferences() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/reportPreferences"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sharedUsers/
    //
    public func sharedUsers() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/sharedUsers"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sites/
    //
    public func projects() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/sites"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/taggedVisitors/
    //
    public func taggedVisitors() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/taggedVisitors"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_webhooks
    //
    public func webhooks() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/webhooks"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http/#add_a_webhook
    //
    public func addWebhook(_ webhookUrl: String, name: String = "") -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "name": name,
            "url": webhookUrl
        ]

        let path = "\(self.basePath)/webhooks"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_triggers_for_a_webhook
    //
    public func webhookTriggers(webhookId: Int) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/webhooks/\(webhookId)/triggers"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#add_an_trigger_to_a_webhook
    //
    public func addWebhookTrigger(webhookId: Int, trigger: String, value: AnyObject) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let body = [
            "trigger": trigger,
            "value": value
        ]

        let path = "\(self.basePath)/webhooks/\(webhookId)/triggers"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .POST, url: url, body: body, bearer: self.client.bearerToken)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#remove_an_trigger_from_a_webhook
    //
    public func removeWebhookTrigger(_ webhookId: Int, triggerId: Int) -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey),
            URLQueryItem(name: "site_token", value: self.client.project)
        ]

        let path = "\(self.basePath)/webhooks/\(webhookId)/triggers/\(triggerId)"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(method: .DELETE, url: url, bearer: self.client.bearerToken)
    }

    //
    // docs:
    //
    //
    public func me() -> URLRequest {
        let queryItems = [
            URLQueryItem(name: "api_key", value: self.client.apiKey)
        ]

        let path = "\(self.basePath)/me"
        let url = URLComponents(host: "api.gosquared.com", path: path, queryItems: queryItems).url!

        return URLRequest(url: url, bearer: self.client.bearerToken)
    }

}
