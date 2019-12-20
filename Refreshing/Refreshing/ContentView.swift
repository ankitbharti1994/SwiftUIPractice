//
//  ContentView.swift
//  Refreshing
//
//  Created by ankit bharti on 18/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State private var isDevelopingMacOSApp = false
    @State private var message = ""
    private let model = Model()
    
    var body: some View {
        VStack(spacing: 20) {
            Text(self.isDevelopingMacOSApp ? "MacOS Developement" : "iOS Development")
                .font(.largeTitle)
            CustomButton(isDevelopingMacOSApp: $isDevelopingMacOSApp)
            Divider()
            Text(message)
        }
        .frame(height: 200.0)
        .onReceive(self.model.value.receive(on: DispatchQueue.main)) { isPublished in
            self.isDevelopingMacOSApp = isPublished
        }
        .onReceive(self.model.message.receive(on: DispatchQueue.main)) { message in
            self.message = message
        }
    }
}

struct CustomButton: View {
    @Binding var isDevelopingMacOSApp: Bool
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                self.isDevelopingMacOSApp.toggle()
            }) {
                Text(self.isDevelopingMacOSApp ? "iOS Development" : "MacOS Development")
                    .frame(width: geometry.size.width * 0.8)
                    .padding()
                    .background(self.isDevelopingMacOSApp ? Color.red : Color.green)
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
        }
    }
}

class Model {
    var value = PassthroughSubject<Bool, Never>()
    var message = PassthroughSubject<String, Never>()
    
    init() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 5.0) {
            self.value.send(true)
            DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 1.0) {
                self.message.send("tvOS Development needs to pursue as well.")
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
