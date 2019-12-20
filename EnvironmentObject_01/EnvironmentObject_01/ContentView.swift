//
//  ContentView.swift
//  EnvironmentObject_01
//
//  Created by ankit bharti on 20/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI
import Combine

class User: ObservableObject {
    let name: String
    @Published var mobile: String
    
    init(name: String, mobile: String) {
        self.name = name
        self.mobile = mobile
    }
}

struct ContentView: View {
    @EnvironmentObject var user: User
    @State var isPresented = false
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text(user.name)
                TextField("Mobile", text: $user.mobile)
            }
            .navigationBarTitle("User Details", displayMode: .automatic)
            .navigationBarItems(trailing: Button(action: {
                self.isPresented.toggle()
            }, label: {
                Image(systemName: "pencil.circle.fill")
                    .font(.largeTitle)
            })
            .sheet(isPresented: $isPresented, content: {
                EditDetailsView(user: self.user, mobile: self.user.mobile)
            }))
            .padding()
        }
    }
}

struct EditDetailsView: View {
    let user: User
    @State var mobile: String
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text(user.name)
                TextField("Mobile", text: $mobile, onEditingChanged: {_ in
                    
                }) {
                    self.user.mobile = self.mobile
                }
            }
            .navigationBarTitle("User", displayMode: .inline)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(User(name: "ankit", mobile: "9986057609"))
    }
}
