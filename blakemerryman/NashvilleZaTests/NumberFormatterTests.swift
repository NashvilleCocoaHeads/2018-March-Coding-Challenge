//
//  NumberFormatterTests.swift
//  NashvilleZaTests
//
//  Created by Blake Merryman on 4/10/18.
//  Copyright © 2018 Nashville CocoaHeads. All rights reserved.
//

import XCTest
@testable import NashvilleZa

class NumberFormatterTests: XCTestCase {

    func testMilesFormatter() {

        let testCases: [(number: Double, expected: String)] = [
            (-1_000, "-1000.00 miles"),
            (-1.235, "-1.24 miles"),
            (-1.234, "-1.23 miles"),
            (0, "0.00 miles"),
            (1.234, "1.23 miles"),
            (1.235, "1.24 miles"),
            (1_000, "1000.00 miles")
        ]

        testCases.forEach { testCase in
            let formatted = NumberFormatter.milesFormatter.string(from: testCase.number)
            XCTAssert(formatted == testCase.expected, "Expected \(testCase.expected), actual \(formatted)")
        }

    }
    
}
