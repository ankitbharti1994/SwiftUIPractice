//
//  ContentView.swift
//  SwiftUI_Cheat
//
//  Created by ankit bharti on 07/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.user) private var user
    @State var didChanged = false
    @State var shouldPresent = false
    
    var body: some View {
        VStack(spacing: 20.0) {
            Text("\(user.score)")
            if shouldPresent {
                DifferentView()
                    .environment(\.user, User(score: user.score * 2))
            }
            Text("\(user.score)")
            
            Button(action: {
                self.shouldPresent.toggle()
            }) {
                Text("Present")
            }
            
            if didChanged {
                Text("preference changed")
            }
        }
        .font(.largeTitle)
        .onPreferenceChange(SettingPreferenceKey.self) { isChanged in
            self.didChanged = isChanged
        }
    }
}


struct DifferentView: View {
    @Environment(\.user) var user
    
    var body: some View {
        HStack {
            Text("\(user.score)")
            SomethingNewView()
        }
        .font(.largeTitle)
        .preference(key: SettingPreferenceKey.self, value: true)
    }
}

struct SomethingNewView: View {
    @Environment(\.user) var user
    
    var body: some View {
        Text("\(self.user.score)")
            .font(.largeTitle)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.user, User(score: 20))
    }
}
