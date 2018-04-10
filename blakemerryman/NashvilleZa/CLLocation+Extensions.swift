//
//  CLLocation+Extensions.swift
//  NashvilleZa
//
//  Created by Addison Webb on 3/28/18.
//  Copyright © 2018 Nashville CocoaHeads. All rights reserved.
//

import CoreLocation

extension CLLocationDistance {

    var miles: Double {
        return self * 0.000621371
    }
    
    /// Challenge 1:
    /// This method is currently tested by `testMilesString()`.
    /// Update this method to make testing easier. For a hint see `testMilesString()` in `NashvilleZaTests.swift`.
    var milesString: String {
        return NumberFormatter.milesFormatter.string(from: miles)
    }

}
