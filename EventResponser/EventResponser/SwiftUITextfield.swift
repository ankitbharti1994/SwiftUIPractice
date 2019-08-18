//
//  SwiftUITextfield.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SwiftUITextfield: View {
    @State var email = ""
    @State var password = ""
    @State var isLoggedIn = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 15.0) {
            TextField("enter your email address", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            SecureField("Enter your password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Divider()
            Button(action: {
                self.isLoggedIn.toggle()
            }) {
                if isLoggedIn {
                    Text("Logout")
                        .font(.headline)
                } else {
                    Text("Login")
                        .font(.headline)
                }
            }
            
            if isLoggedIn {
                Text("Email: \(self.email) and password: \(self.password)")
                    .font(.headline)
                    .lineLimit(nil)
            }
            
        }.padding()
    }
}

#if DEBUG
struct SwiftUITextfield_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUITextfield()
    }
}
#endif
