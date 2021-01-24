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
                
                NavigationView {
                    WorldMap()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                NavigationView {
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }

            }
            
            
        }
    }
}
