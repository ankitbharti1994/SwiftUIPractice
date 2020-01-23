//
//  ContentView.swift
//  Layout_001
//
//  Created by ankit bharti on 31/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 10) {
            Image("swiftui")
                .border(Color.red)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent et ipsum nulla. In nec nisl nunc. Nulla lectus sem, vulputate non dolor nec, tristique pulvinar felis.")
                .border(Color.green)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                .border(Color.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 340, height: 180))
    }
}
