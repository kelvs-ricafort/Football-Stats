//
//  ContentView.swift
//  Football-Stats
//
//  Created by Kelvin on 6/15/24.
//

import SwiftUI

struct ContentView: View {
    @State var teamList = [Team]()
    
    var body: some View {
        VStack {
            List(teamList) { team in
                Text(team.name ?? "No name")
            }
            .listStyle(.plain)
            
            Button {
                
            } label: {
                Text("Get Teams")
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
