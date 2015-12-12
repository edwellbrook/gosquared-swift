//
//  Geo.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 05/06/2015.
//  Copyright (c) 2015 Go Squared Ltd. All rights reserved.
//

import Foundation

public struct GeoItem {
    public let id: String
    public let land: NSDate
    public let lat: Double
    public let lon: Double

    public init(json: [String: AnyObject]) {
        self.id = json["id"] as! String
        self.land = iso8601(json["land"] as! String)!
        self.lat = json["lat"] as! Double
        self.lon = json["lon"] as! Double
    }
}

public struct Geo {
    public let cardinality: Int
    public let list: [GeoItem]

    public init(json: [String: AnyObject]) {
        var visitors: [GeoItem] = []

        for visitor in json["list"] as! [AnyObject] {
            visitors.append(GeoItem(json: visitor as! [String: AnyObject]))
        }

        self.cardinality = json["cardinality"] as! Int
        self.list = visitors
    }
}
