//
//  TrekrMultiplatformApp.swift
//  Shared
//
//  Created by Russell Gordon on 2021-01-23.
//

import SwiftUI

@main
struct TrekrMultiplatformApp: App {
    
    // LocationStore is a reference type
    // It's created by this view
    // It's a source of truth, not a derived value
    // So, use @StateObject
    // Establishes an initial connection to the view model for locations
    @StateObject var store = LocationStore()

    var body: some Scene {
        WindowGroup {
            TabView {
                
                NavigationView {
                    LocationsList(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                #if os(iOS)
                NavigationView {
                    WorldMap(store: testStore)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #else
                NavigationView {
                    WorldMap(store: testStore)
                        .frame(width: 400)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                #endif

                #if os(iOS)
                NavigationView {
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                #else
                TipsList()
                    .tabItem {
                        Image(systemName: "person.fill.questionmark")
                        Text("Tips")
                    }
                #endif

            }
            
            
        }
    }
}
