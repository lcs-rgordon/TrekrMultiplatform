//
//  LocationStore.swift
//  TrekrMultiplatform
//
//  Created by Russell Gordon on 2021-01-24.
//

import Foundation

// Holds the _state_ of of the location data in use within the app, so this belongs in the ViewModels group
class LocationStore: ObservableObject {
    
    var places: [Location]
        
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file into the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        // Sort the list of locations alphabetically by name, in ascending order
        places.sort(by: {
            $0.name < $1.name
        })
        
    }
    
}

var testStore = LocationStore()

