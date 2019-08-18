//
//  ContentView.swift
//  AdvancedState
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
        VStack {
            Text("your score is: \(userSettings.score)")
            Button(action: {
                self.userSettings.score += 1
            }) {
                Text("Increase score")
                    .font(.largeTitle)
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
