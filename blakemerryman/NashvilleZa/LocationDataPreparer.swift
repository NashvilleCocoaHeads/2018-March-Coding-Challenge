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
                                sortedByDistance: Bool = true) throws -> [Location] {

        guard let dataURL = bundle.url(forResource: fileName, withExtension: fileExtension) else {
            throw LocationDataPreparerError.unableToLoadDataFromBundle
        }

        let zaData = try Data(contentsOf: dataURL, options: [])
        return try loadLocations(fromData: zaData, sortedByDistance: sortedByDistance)
    }

    /// Use this method to load locations from response data.
    static func loadLocations(fromData data: Data, sortedByDistance: Bool) throws -> [Location] {
        let decoder = JSONDecoder()

        var locations = try decoder.decode([Location].self, from: data)

        if sortedByDistance {
            locations = locations.sortByDistance()
        }

        return locations
    }

}
