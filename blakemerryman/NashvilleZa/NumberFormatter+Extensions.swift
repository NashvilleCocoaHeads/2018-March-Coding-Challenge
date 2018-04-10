//
//  NumberFormatter+Extensions.swift
//  NashvilleZa
//
//  Created by Blake Merryman on 4/10/18.
//  Copyright © 2018 Nashville CocoaHeads. All rights reserved.
//

import Foundation

extension NumberFormatter {

    static let milesFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.positiveFormat = "0.00 miles"
        formatter.negativeFormat = "-0.00 miles"
        return formatter
    }()

    func string(from double: Double) -> String {
        let nsDouble = double as NSNumber
        return string(from: nsDouble)! // should never fail
    }

}
