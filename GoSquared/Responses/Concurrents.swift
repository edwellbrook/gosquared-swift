//
//  Concurrents.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 05/06/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct Concurrents {
    public let active: Int
    public let pages: Int
    public let returning: Int
    public let tagged: Int
    public let visitors: Int

    public init(json: [String: AnyObject]) {
        self.active = json["active"] as! Int
        self.pages = json["pages"] as! Int
        self.returning = json["returning"] as! Int
        self.tagged = json["tagged"] as! Int
        self.visitors = json["visitors"] as! Int
    }
}
