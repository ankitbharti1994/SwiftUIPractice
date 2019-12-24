//
//  ContentView.swift
//  Searchlist
//
//  Created by ankit bharti on 25/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let countries = ["India", "Australia", "Srilanka", "South Africa", "Pakistan", "West Indies"]
    @State private var text: String = ""
    private var filteredData: [String] {
        guard text.isEmpty else {
            return self.countries.filter { $0.contains(text) }
        }
        
        return countries
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(placeholder: "search country", text: self.$text)
                
                List(filteredData, id: \.self) {
                    Text($0)
                }
                .listStyle(GroupedListStyle())
            }
            .onTapGesture(count: 2) {
                UIApplication.shared.dismissKeyboard()
            }
            .navigationBarTitle("Countries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .dark)
    }
}
