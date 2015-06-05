//
//  Overview.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 05/06/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct DateRange {
    public let from: NSDate
    public let to: NSDate

    public init(json: [String: AnyObject]) {
        self.from = iso8601(json["from"] as! String)!
        self.to = iso8601(json["to"] as! String)!
    }
}

public struct Summary {
    public let range: DateRange
    public let min: Int
    public let max: Int
    public let avg: Int

    public init(json: [String: AnyObject]) {
        self.range = DateRange(json: json["range"] as! [String: AnyObject])
        self.min = json["min"] as! Int
        self.max = json["max"] as! Int
        self.avg = json["avg"] as! Int
    }
}

public struct Overview {
    public let visitors: Int
    public let returning: Int
    public let pages: Int
    public let active: Int
    public let tagged: Int
    public let summary: Summary

    public init(json: [String: AnyObject]) {
        self.visitors = json["visitors"] as! Int
        self.returning = json["returning"] as! Int
        self.pages = json["pages"] as! Int
        self.active = json["active"] as! Int
        self.tagged = json["tagged"] as! Int
        self.summary = Summary(json: json["summary"] as! [String: AnyObject])
    }
}
