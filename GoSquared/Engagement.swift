//
//  Engagement.swift
//  GoSquared
//
//  Created by Edward Wellbrook on 05/06/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct Breakdown {
    public let average: Double
    public let breakdown: [String: Int]

    public init(json: [String: AnyObject]) {
        self.average = json["average"] as! Double
        self.breakdown = json["breakdown"] as! [String: Int]
    }
}

public struct Engagement {
    public let timeOnSite: Breakdown
    public let visitDepth: Breakdown

    public init(json: [String: AnyObject]) {
        self.timeOnSite = Breakdown(json: json["timeOnSite"] as! [String: AnyObject])
        self.visitDepth = Breakdown(json: json["visitDepth"] as! [String: AnyObject])
    }
}
