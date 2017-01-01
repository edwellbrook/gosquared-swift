//
//  Package.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Edward Wellbrook. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "GoSquaredAPI",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/CommonCrypto", majorVersion: 0, minor: 1)
    ]
)
