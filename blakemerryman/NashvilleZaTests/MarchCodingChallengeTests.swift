//
//  LocationDataPreparerTests.swift
//  NashvilleZaTests
//
//  Created by Addison Webb on 4/9/18.
//  Copyright © 2018 Nashville CocoaHeads. All rights reserved.
//

import XCTest
@testable import NashvilleZa

extension Bundle {
    static let test = Bundle(for: LocationDataPreparerTests.self)
}

class LocationDataPreparerTests: XCTestCase {
    
    /// Challenge 2
    func testJSONDecoding() {
        do {
            let locations = try LocationDataPreparer.getLocationData(fromFile: "GoodZa", withExtension: "json", locatedInBundle: .test, sortByDistance: true)
            XCTAssert(locations.count > 0, "Unable to load locations from JSON.")
        }
        catch {
            XCTFail("We should have been able to load the location data.")
        }
    }

    func testJSONDecodingFailure() {
        do {
            _ = try LocationDataPreparer.getLocationData(fromFile: "BadZa", withExtension: "json", locatedInBundle: .test, sortByDistance: true)
            XCTFail("We should have been unable to load the location data.")
        }
        catch {
            XCTAssertNotNil(error, "We should have thrown some error.")
        }
    }
    
}
