//
//  TrekrMultiplatformApp.swift
//  Shared
//
//  Created by Russell Gordon on 2021-01-23.
//

import SwiftUI

@main
struct TrekrMultiplatformApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LocationDetail(location: Location.example)
            }
        }
    }
}
