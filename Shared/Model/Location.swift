//
//  Location.swift
//  TrekrMultiplatform (iOS)
//
//  Created by Russell Gordon on 2021-01-23.
//

import Foundation

// Provides the _description_ of what a Location contains, so this belongs in the Model group
struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
   
    // "static" – exists at Type level – shared across the type, created once
    static let example = Location(id: 1,
                           name: "The Highlands",
                           country: "United Kingdom",
                           description: "The Highlands is a historic region of Scotland. Culturally, the Highlands and the Lowlands diverged from the later Middle Ages into the modern period, when Lowland Scots replaced Scottish Gaelic throughout most of the Lowlands. The term is also used for the area north and west of the Highland Boundary Fault, although the exact boundaries are not clearly defined, particularly to the east. The Great Glen divides the Grampian Mountains to the southeast from the Northwest Highlands. The Scottish Gaelic name of A' Ghàidhealtachd literally means \"the place of the Gaels\" and traditionally, from a Gaelic-speaking point of view, includes both the Western Isles and the Highlands.",
                           more: "The area is very sparsely populated, with many mountain ranges dominating the region, and includes the highest mountain in the British Isles, Ben Nevis. During the 18th and early 19th centuries the population of the Highlands rose to around 300,000, but from c. 1841 and for the next 160 years, the natural increase in population was exceeded by emigration (mostly to Canada, the United States, Australia and New Zealand, and migration to the industrial cities of Scotland and England.) The area is now one of the most sparsely populated in Europe. At 9.1/km2 (24/sq mi) in 2012, the population density in the Highlands and Islands is less than one seventh of Scotland's as a whole, comparable with that of Bolivia, Chad and Russia.",
                           latitude: 57.1200,
                           longitude: -4.7100,
                           heroPicture: "highlands",
                           advisory: "We accept no liability for any visitors eaten alive by midges.")
}


