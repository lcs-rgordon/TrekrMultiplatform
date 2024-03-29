//
//  LocationsList.swift
//  TrekrMultiplatform
//
//  Created by Russell Gordon on 2021-01-24.
//

import SwiftUI

struct LocationsList: View {
    
    // Needs a reference to the store of locations
    // This is a derived value, from the source of truth at the app level
    // Provides a reference to the view model for locations
    @ObservedObject var store: LocationStore

    var body: some View {

        // Iterate over the list of locations in the data store
        List(store.places) { location in
            
            // Create a navigation link leading to the detail view
            // Great example of abstraction in action!
            NavigationLink(destination: LocationDetail(location: location)) {
                
                HStack {
                    
                    Image(location.heroPicture)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)

                    VStack(alignment: .leading) {
                        Text(location.name)
                        Text(location.country)
                            .font(.subheadline)
                    }
                    
                }
                
            }
        }
        .navigationTitle("Locations")

    }
}

struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationsList(store: testStore)
        }
    }
}
