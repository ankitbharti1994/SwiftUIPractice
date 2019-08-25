//
//  ContentView.swift
//  Combine01
//
//  Created by ankit bharti on 25/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = DataSource()
    
    var body: some View {
        NavigationView {
            List(dataSource.users) { user in
                NavigationLink(destination: DetailView(user: user)) {
                    Text(user.name)
                }
            }
            .padding()
            .navigationBarItems(trailing:
                Group {
                    if dataSource.isCancelled {
                        Button(action: {
                            self.dataSource.fetch()
                        }, label: {
                            Image(systemName: "play")
                        })
                    } else {
                        Button(action: {
                            self.dataSource.cancel()
                        }) {
                            Image(systemName: "pause")
                        }
                    }
                }
                .font(.largeTitle)
            )
            .navigationBarTitle("Users")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
