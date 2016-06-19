//
//  DateFormatter.swift
//  GoSquaredAPI
//
//  Created by Edward Wellbrook on 19/06/2016.
//  Copyright © 2016 Edward Wellbrook. All rights reserved.
//

import Foundation

extension DateFormatter {

    convenience init(dateFormat: String) {
        self.init()
        self.dateFormat = dateFormat
    }

}
