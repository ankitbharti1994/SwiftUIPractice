//
//  ContentView.swift
//  Container_01
//
//  Created by ankit bharti on 20/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        Button(action: {
            self.isPresented.toggle()
        }) {
            Text("MacOS Development")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .sheet(isPresented: $isPresented) {
            DetailsView(isPresented: self.$isPresented)
        }
    }
}

struct DetailsView: View {
    @Binding var isPresented: Bool
    @State private var friend = "ankit"
    private let friends = ["ankit", "rohit", "kailash", "garima"]
    
    var body: some View {
        VStack {
            Text("new view")
            Divider()
            HStack {
                Button(action: {
                    self.isPresented.toggle()
                }) {
                    Text("Dismiss")
                }
                
                Divider()
                
                MenuButton(friend) {
                    ForEach(friends, id: \.self) { name in
                        Button(action: {
                            self.friend = name
                        }) {
                            Text(name)
                        }
                    }
                }
                .menuButtonStyle(PullDownMenuButtonStyle())
            }
            .padding()
            .frame(height: 50.0)
        }
        .frame(width: 500.0, height: 200.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
