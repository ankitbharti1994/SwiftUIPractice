//
//  ContentView.swift
//  CustomButton_Demo1
//
//  Created by ankit bharti on 13/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let city = ["Patna", "Ranchi", "Kolkata", "Mumbai", "Pune", "Jaipur", "Delhi", "Chandhigadh", "Mohali", "Bangalore"]
    @State private var shouldGreet = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Beach").font(.headline)) {
                    Image("beach")
                        .resizable()
                        .cornerRadius(15.0)
                }
                
                if self.shouldGreet {
                    Section {
                        NavigationLink(destination: Text("Hello")) {
                            Text("Hello World")
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                    }
                }
                
                Section(header: Text("City").font(.headline),
                        footer: Text("Name of the city that either i visited or want to visit in the near future.")
                ) {
                    ForEach(self.city, id: \String.self) { text in
                        NavigationLink(destination: Text(text)) {
                            Text(text)
                                .font(.headline)
                                .foregroundColor(.primary)
                        }
                    }
                }
            }
            .navigationBarTitle("SwiftUI")
            .navigationBarItems(trailing: Button(action: {
                self.shouldGreet.toggle()
            }, label: {
                Image(systemName: "person.crop.circle.fill")
                    .font(.title)
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.colorScheme, .light)
    }
}
