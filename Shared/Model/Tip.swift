//
//  Tip.swift
//  TrekrMultiplatform
//
//  Created by Russell Gordon on 2021-01-24.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
