//
//  LocationDataPreparer.swift
//  NashvilleZa
//
//  Created by Addison Webb on 3/28/18.
//  Copyright © 2018 Nashville CocoaHeads. All rights reserved.
//

import Foundation

enum LocationDataPreparerError: Error {
    case unableToLoadDataFromBundle
}

class LocationDataPreparer {
    
    /// Challenge 2:
    /// This method is completely untested!
    /// Make this method testable by breaking up this method.
    static func getLocationData(fromFile fileName: String = "za-data",
                                withExtension fileExtension: String = "json",
                                locatedInBundle bundle: Bundle = .main,
                                sortByDistance: Bool = true) throws -> [Location] {

        guard let dataURL = bundle.url(forResource: fileName, withExtension: fileExtension) else {
            throw LocationDataPreparerError.unableToLoadDataFromBundle
        }

        let zaData = try Data(contentsOf: dataURL, options: [])
        let decoder = JSONDecoder()
        var locations = try decoder.decode([Location].self, from: zaData)

        if sortByDistance {
            locations = locations.sortByDistance()
        }

        return locations
    }

}
