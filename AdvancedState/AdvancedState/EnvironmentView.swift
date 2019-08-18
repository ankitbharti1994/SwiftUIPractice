//
//  EnvironmentView.swift
//  AdvancedState
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct EnvironmentView: View {
    @EnvironmentObject private var settings: UserSettings
    var body: some View {
        NavigationView {
            VStack(spacing: 20.0) {
                Text("Your score: \(settings.score)")
                Button(action: {
                    self.settings.score += 1
                }) {
                    Text("Increase Score")
                        .font(.largeTitle)
                }
                
                NavigationLink(destination: DestinationView()) {
                    Text("Show Detailview")
                        .font(.headline)
                }
            }
        }
    }
}

#if DEBUG
struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
#endif
