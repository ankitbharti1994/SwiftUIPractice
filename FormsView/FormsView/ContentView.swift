//
//  ContentView.swift
//  FormsView
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var enableLogging = false
    
    @State private var currentFriendIndex = 0
    @State private var friends = ["rohit", "garima", "kailash", "sumit"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(footer: Text("Note: Enabling logging may slow down the app")) {
                    Picker("Pick Friend", selection: $currentFriendIndex) {
                        ForEach(0..<self.friends.count) {
                            Text(self.friends[$0]).tag($0)
                        }
                    }
                    
                    if currentFriendIndex != 1 {
                        Toggle(isOn: $enableLogging) {
                            Text("Enable logging")
                        }
                    }
                }
                
                Section {
                    Button(action: {
                        print("changes saved.")
                    }) {
                        Text("Save Changes")
                    }.disabled(!enableLogging)
                }
            }
            .navigationBarTitle("Settings", displayMode: .automatic)
            .navigationBarItems(trailing: Button(action: {
                print("Info button clicked.")
            }, label: {
                Image(systemName: "pencil.tip.crop.circle")
            }))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
