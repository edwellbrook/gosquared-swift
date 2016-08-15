//
//  URLRequest.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Edward Wellbrook. All rights reserved.
//

import Foundation

extension URLRequest {

    enum HTTPMethod: String {
        case GET
        case POST
        case DELETE
    }

    init(url: URL, bearer: String?) {
        self.init(url: url)

        if let token = bearer {
            self.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }
    }

    init(method: HTTPMethod, url: URL, body: Any? = nil, bearer: String? = nil) {
        self.init(url: url, bearer: bearer)
        self.httpMethod = method.rawValue

        guard let json = body else {
            return
        }

        do {
            self.httpBody = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            self.setValue("application/json", forHTTPHeaderField: "Content-Type")
        } catch _ {
        }
    }

}
