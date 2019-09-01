//
//  ContentView.swift
//  Dashboard_SwiftUI
//
//  Created by ankit bharti on 31/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let utility: Utility
    private var categories: [String: [Player]] {
        .init(grouping: self.utility.players) { $0.country.rawValue }
    }
    private var keys: [String] {
        self.categories.keys.sorted()
    }
    
    init() {
        self.utility = Utility()
        print(keys)
    }
    
    var body: some View {
        NavigationView {
            List(keys, id: \.self) { (key) -> PlayerRow in
                let persons = self.categories[key]
                return PlayerRow(country: key, players: persons!)
            }
            .navigationBarTitle("Cricket Players")
            .padding(.bottom, 5.0)
        }
    }
}
