//
//  Account.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 23/05/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
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
    public func alertPreferences(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/alertPreferences/?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/blocked/
    //
    public func blocked(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/blocked/?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/reportPreferences/
    //
    public func reportPreferences(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/reportPreferences/?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sharedUsers/
    //
    public func sharedUsers(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/sharedUsers/?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/sites/
    //
    public func sites(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/sites/?api_key=\(client.key)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/developer/api/account/v1/taggedVisitors/
    //
    public func taggedVisitors(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/taggedVisitors/?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_webhooks
    //
    public func webhooks(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/webhooks?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http/#add_a_webhook
    // 
    public func addWebhook(webhookUrl: String, name: String = "", completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/webhooks?api_key=\(client.key)&site_token=\(client.token)")!
        let data = [
            "name": name,
            "url": webhookUrl
        ]

        return client.post(url, data: data, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/#retrieve_all_triggers_for_a_webhook
    // 
    public func webhookTriggers(webhookId: Int, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/webhooks/\(webhookId)/triggers?api_key=\(client.key)&site_token=\(client.token)")!

        return client.get(url, handler: completionHandler)
    }

    //
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#add_an_trigger_to_a_webhook
    // 
    public func addWebhookTrigger(webhookId: Int, trigger: String, value: String, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/webhooks/\(webhookId)/triggers?api_key=\(client.key)&site_token=\(client.token)")!
        let data = [
            "trigger": trigger,
            "value": value
        ]

        return client.post(url, data: data, handler: completionHandler)
    }

    // 
    // docs:
    // https://www.gosquared.com/docs/api/account/webhooks/http#remove_an_trigger_from_a_webhook
    //
    public func removeWebhookTrigger(webhookId: Int, triggerId: Int, completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let url = NSURL(string: "\(baseURL)/webhooks/\(webhookId)/triggers/\(triggerId)?api_key=\(client.key)&site_token=\(client.token)")!

        return client.delete(url, handler: completionHandler)
    }


    public func me(completionHandler: GoSquaredAPI.Handler) -> NSURLSessionDataTask? {
        let  url = NSURL(string: "\(stagingBaseURL)/me?api_key=\(client.key)")!

        return client.get(url, handler: completionHandler)
    }

}
