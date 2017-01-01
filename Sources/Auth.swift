//
//  Auth.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 08/07/2016.
//  Copyright © 2016-2017 Edward Wellbrook. All rights reserved.
//

import Foundation
import CommonCrypto

public class Auth {

    private let client: GoSquaredAPI
    private let basePath: String

    internal init(client: GoSquaredAPI) {
        self.client = client
        self.basePath = "/auth/v1"
    }

    public func logIn(email: String, password: String, authToken: String?, scope: [String]) -> URLRequest {
        var body = [
            "email": email,
            "password": password.sha1,
            "device": "gosquared-swift", // should be generated and reused
            "scope": scope.joined(separator: " ")
        ]

        // for supporting 2-factor auth
        if let code = authToken {
            body["code"] = code
        }

        let url = URLComponents(host: "api.gosquared.com", path: "\(self.basePath)/login", queryItems: []).url!

        return URLRequest(method: .POST, url: url, body: body)
    }

    public func refreshToken(_ token: String) -> URLRequest {
        let body = [
            "refresh_token": token
        ]

        let url = URLComponents(host: "api.gosquared.com", path: "\(self.basePath)/refresh", queryItems: []).url!

        return URLRequest(method: .POST, url: url, body: body)
    }

}

private extension String {

    var sha1: String {
        get {
            let data = self.data(using: String.Encoding.utf8)!
            var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
            data.withUnsafeBytes {
                _ = CC_SHA1($0, CC_LONG(data.count), &digest)
            }
            let hexBytes = digest.map { String(format: "%02hhx", $0) }
            return hexBytes.joined(separator: "")
        }
    }

}
