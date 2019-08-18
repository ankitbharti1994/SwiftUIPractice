//
//  ContentView.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isGreeting = true
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Toggle(isOn: $isGreeting) {
                Text("Show Greeting Message")
            }
            .padding()
            
            if isGreeting {
                Text("Hello world!")
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
