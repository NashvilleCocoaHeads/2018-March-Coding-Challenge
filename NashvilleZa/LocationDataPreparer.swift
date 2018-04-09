//
//  LocationDataPreparer.swift
//  NashvilleZa
//
//  Created by Addison Webb on 3/28/18.
//  Copyright © 2018 Nashville CocoaHeads. All rights reserved.
//

import Foundation

class LocationDataPreparer {
    
    /// Challenge 2:
    /// This method is completely untested!
    /// Make this method testable by breaking up this method.
    func getLocationData() -> [Location] {
        let dataURL = Bundle.main.url(forResource: "za-data", withExtension: "json")!
        let zaData = try! Data(contentsOf: dataURL, options: [])
        let decoder = JSONDecoder()
        
        return try! decoder.decode([Location].self, from: zaData).sortByDistance()
    }
}
