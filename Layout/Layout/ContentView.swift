//
//  ContentView.swift
//  Layout
//
//  Created by ankit bharti on 17/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(alignment: .center, spacing: 10) {
//            Text("Ankit Bharti")
//                .padding(.bottom, 50.0)
//            Divider()
//            Text("iOS Developer")
//                .padding()
//        }
        
        ZStack {
            Image("ankit")
            Text("ankit bharti")
                .padding(.top, 200.0)
                .font(.largeTitle)
                .foregroundColor(.black)
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
