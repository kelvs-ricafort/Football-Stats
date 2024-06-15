//
//  DataService.swift
//  Football-Stats
//
//  Created by Kelvin on 6/15/24.
//

import Foundation

struct DataService {
    let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getTeamsData() async -> [Team] {
        guard apiKey != nil else {
            return [Team]()
        }
        
        let urlString = "https://api.football-data.org/v4/teams"
        if let url = URL(string: urlString) {
            var request = URLRequest(url: url)
            request.addValue(apiKey!, forHTTPHeaderField: "X-Auth-Token")
            
            do {
                let (data, _) = try await URLSession.shared.data(for: request)
                let decoder = JSONDecoder()
                let teamsData = try decoder.decode(TeamResponse.self, from: data)
                return teamsData.teams
            } catch {
                print(error.localizedDescription)
            }
        }
        return [Team]()
    }
}
