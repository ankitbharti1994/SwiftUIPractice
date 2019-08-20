//
//  ContentView.swift
//  Navigation
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        NavigationView {
            Text("This is a detailed view.")
                .navigationBarTitle("Settings", displayMode: .inline)
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: DetailView()) {
                    Text("Go To Detail View")
                }.navigationBarTitle("Navigation")
            }
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
