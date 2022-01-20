//
//  TipsList.swift
//  TrekrMultiplatform
//
//  Created by Russell Gordon on 2021-01-24.
//

import SwiftUI

struct TipsList: View {

    // TipStore is a reference type
    // It's created by this view
    // It's a source of truth, not a derived value
    // So, use @StateObject
    // Establishes an initial connection to the view model for tips
    @StateObject var dataStore = TipStore()

    var body: some View {
        
        // Note how the List view in SwiftUI does many things
        // Not just for navigation
        // children argument must match up with the Tip type property name (children)
        // Does NOT have to match the parameter name
        List(dataStore.tips, id: \.text, children: \.children) { tip in
            
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
            
        }
        .navigationTitle("Tips")
    }
        
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TipsList()
        }
    }
}
