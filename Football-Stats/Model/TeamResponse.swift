//
//  TeamResponse.swift
//  Football-Stats
//
//  Created by Kelvin on 6/15/24.
//

import Foundation

struct TeamResponse: Decodable {
    var count: Int
    var teams: [Team]
}
