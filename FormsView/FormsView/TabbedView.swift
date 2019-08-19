//
//  TabbedView.swift
//  FormsView
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct TabbedView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    VStack {
                        Image(systemName: "pencil.tip")
                        Text("Pencil")
                    }
            }
            
            ContainerView()
                .tabItem {
                    VStack {
                        Image(systemName: "book")
                        Text("Book")
                    }
            }
            
            Text("Third View")
                .tabItem {
                    VStack {
                        Image(systemName: "icloud")
                        Text("iCloud")
                    }
            }
        }
    }
}

#if DEBUG
struct TabbedView_Previews: PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
#endif
