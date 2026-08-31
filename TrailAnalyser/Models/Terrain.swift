//
//  Terrain.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 28/08/26.
//

import Foundation

enum Terrain: String, Identifiable, CaseIterable {
    case paved
    case dirt
    case rocky
    case sandy

    var id: String {
        rawValue
    }
}
