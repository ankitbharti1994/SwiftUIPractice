//
//  ContainerView.swift
//  Container_01
//
//  Created by ankit bharti on 20/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContainerView: View {
    @State var name = "ankit"

    var body: some View {
        HSplitView {
            FriendsView(name: $name)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct FriendsView: View {
    @Binding var name: String
    private let friends = ["ankit", "rohit", "kailash", "garima"]
    @State private var isOn = false
    var body: some View {
        TabView(selection: $name, content: {
            ForEach(friends, id: \.self) { name in
                Text(name)
                    .font(.largeTitle)
                    .tabItem {
                        Button(action: {
                            self.name = name
                        }) {
                            Text(name)
                        }
                    }
            }
        })
        .padding()
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
