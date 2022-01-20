//
//  Tip.swift
//  TrekrMultiplatform
//
//  Created by Russell Gordon on 2021-01-24.
//

import Foundation

// Provides the _description_ of what a Tip contains, so this belongs in the Model group
struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
