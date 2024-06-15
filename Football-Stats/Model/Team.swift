//
//  Team.swift
//  Football-Stats
//
//  Created by Kelvin on 6/15/24.
//

import Foundation

struct Team: Decodable, Identifiable {
    var id: Int
    var name: String?
    var venue: String?
}
