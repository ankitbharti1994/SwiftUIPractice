//
//  ContentView.swift
//  PositionView
//
//  Created by ankit bharti on 21/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Text("Hello World")
//            Text("Ankit Bharti")
//                .offset(x: 20.0, y: 10.0)
//                .padding(.bottom, 10.0)
//            Text("Garima sharma")
//        }
        
        ZStack(alignment: .bottomTrailing) {
            Image("ankit")
                .colorMultiply(.red)
                .saturation(0.5)
                .contrast(0.7)
            Text("ankit bharti")
                .font(.headline)
                .padding(4)
                .shadow(color: .red, radius: 5.0, x: 10.0, y: 10.0)
                .border(Color.red, width: 4.0)
                .background(Color.black)
                .foregroundColor(.white)
//                .clipShape(Circle())
//                .rotationEffect(.radians(.pi / 2.0), anchor: .topLeading)
                .rotation3DEffect(.degrees(45), axis: (x: 1.0, y: 0.0, z: 0.0))
//                .cornerRadius(10.0)
//                .blur(radius: 4.0)
                .blendMode(.multiply)
                .scaleEffect(2.0, anchor: .bottom)
                .offset(x: -68.0, y: 0.0)
//                .opacity(1.0)
        }.accentColor(.purple)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
