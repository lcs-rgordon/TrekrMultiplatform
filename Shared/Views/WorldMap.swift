//
//  WorldMap.swift
//  TrekrMultiplatform
//
//  Created by Russell Gordon on 2021-01-24.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    
    // Get a reference to the location store
    // This is a derived value passed as a parameter
    // So, @ObservedObject
    // Provides a reference to the view model for locations
    @ObservedObject var store: LocationStore
    
    // Centre on LCS, wide enough to show most of eastern North America
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922,
                                                                          longitude: -78.26571),
                                           span: MKCoordinateSpan(latitudeDelta: 40,
                                                                  longitudeDelta: 40))
    
    var body: some View {
        
        let currentRegion = Binding<MKCoordinateRegion>(
            get: {
                self.region
            },
            set: {
                self.region = $0
                print(region.center)
            }
        )
        
        return Map(coordinateRegion: currentRegion, annotationItems: store.places) { location in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                
                NavigationLink(destination: LocationDetail(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }

            }
        }
        .navigationTitle("Map")
        
    }
    
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorldMap(store: testStore)
        }
    }
}
