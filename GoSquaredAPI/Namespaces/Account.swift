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

    public init(client: GoSquaredAPI) {
        self.client = client
        self.baseURL = "\(GoSquaredAPI.baseURL)/account/v1/"
        self.stagingBaseURL = "\(GoSquaredAPI.stagingBaseURL)/account/v1"
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/alertPreferences/
    //
    public func alertPreferences() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/alertPreferences/", query: query)
    }

    public func alertPreferences(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.alertPreferences()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/blocked/
    //
    public func blocked() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/blocked/", query: query)
    }

    public func blocked(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.blocked()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/reportPreferences/
    //
    public func reportPreferences() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/reportPreferences/", query: query)
    }

    public func reportPreferences(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.reportPreferences()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sharedUsers/
    //
    public func sharedUsers() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/sharedUsers/", query: query)
    }

    public func sharedUsers(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.sharedUsers()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sites/
    //
    public func sites() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/sites/", query: query)
    }

    public func sites(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.sites()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/taggedVisitors/
    //
    public func taggedVisitors() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/taggedVisitors/", query: query)
    }

    public func taggedVisitors(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.taggedVisitors()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_webhooks
    //
    public func webhooks() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/webhooks/", query: query)
    }

    public func webhooks(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.webhooks()

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http/#add_a_webhook
    // 
    public func addWebhook(webhookUrl: String, name: String = "") -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        let body = [
            "name": name,
            "url": webhookUrl
        ]

        return self.client.post("\(baseURL)/webhooks/", query: query, body: body)
    }

    public func addWebhook(webhookUrl: String, name: String = "", completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.addWebhook(webhookUrl, name: name)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_triggers_for_a_webhook
    // 
    public func webhookTriggers(webhookId: Int) -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/triggers/", query: query)
    }

    public func webhookTriggers(webhookId: Int, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.webhookTriggers(webhookId)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#add_an_trigger_to_a_webhook
    // 
    public func addWebhookTrigger(webhookId: Int, trigger: String, value: String) -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        let body = [
            "trigger": trigger,
            "value": value
        ]

        return self.client.post("\(baseURL)/webhooks/\(webhookId)/triggers/", query: query, body: body)
    }

    public func addWebhookTrigger(webhookId: Int, trigger: String, value: String, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.addWebhookTrigger(webhookId, trigger: trigger, value: value)

        return self.client.performRequest(req, handler: completionHandler)
    }

    // 
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#remove_an_trigger_from_a_webhook
    //
    public func removeWebhookTrigger(webhookId: Int, triggerId: Int) -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.delete("\(baseURL)/webhooks/\(webhookId)/triggers/\(triggerId)/", query: query)
    }

    public func removeWebhookTrigger(webhookId: Int, triggerId: Int, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.removeWebhookTrigger(webhookId, triggerId: triggerId)

        return self.client.performRequest(req, handler: completionHandler)
    }

    //
    // docs:
    // 
    //
    public func me() -> NSURLRequest {
        let query = [
            "api_key": self.client.key,
            "site_token": self.client.token
        ]

        return self.client.get("\(baseURL)/me/", query: query)
    }

    public func me(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let req = self.me()

        return self.client.performRequest(req, handler: completionHandler)
    }

}
