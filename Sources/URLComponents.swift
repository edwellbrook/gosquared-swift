//
//  URLComponents.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Edward Wellbrook. All rights reserved.
//

import Foundation

extension URLComponents {

    init(host: String, path: String, queryItems: [URLQueryItem]) {
        self.init()
        self.scheme = "https"
        self.host = host
        self.path = path
        self.queryItems = queryItems
    }
    
}
