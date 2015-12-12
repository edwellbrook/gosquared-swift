//
//  Pages.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 05/06/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct Page {
    // should this be something else?
    public let proto: String
    public let slashes: Bool

    // whats the normal value of this?
    public let auth: String?
    public let hostname: String
    public let hash: String?
    public let search: String?
    public let query: String?
    public let pathname: String

    // difference with this and pathname?
    public let path: String
    public let href: String
    public let visitors: Int
    public let engagedTime: Int
    public let title: String

    public init(json: [String: AnyObject]) {
        self.proto = json["protocol"] as! String
        self.slashes = json["slashes"] as! Bool
        self.auth = json["auth"] as? String
        self.hostname = json["hostname"] as! String
        self.hash = json["hash"] as? String
        self.search = json["search"] as? String
        self.query = json["query"] as? String
        self.pathname = json["pathname"] as! String
        self.path = json["path"] as! String
        self.href = json["href"] as! String
        self.visitors = json["visitors"] as! Int
        self.engagedTime = json["engagedTime"] as! Int
        self.title = json["title"] as! String
    }
}

public struct Pages {
    public let list: [Page]
    public let cardinality: Int

    public init(json: [String: AnyObject]) {
        var pages: [Page] = []

        for page in json["list"] as! [AnyObject] {
            pages.append(Page(json: page as! [String: AnyObject]))
        }

        self.list = pages
        self.cardinality = json["cardinality"] as! Int
    }
}
