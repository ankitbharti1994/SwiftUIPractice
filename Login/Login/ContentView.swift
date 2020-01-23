//
//  ContentView.swift
//  Login
//
//  Created by ankit bharti on 23/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var viewModel = ViewModel()
    @State var message: String = ""
    
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 24.0) {
                TextField("Email", text: self.$viewModel.email)
                    .modifier(CustomRoundedRectangle(color: .primary))
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                
                SecureField("Password", text: self.$viewModel.password)
                    .modifier(CustomRoundedRectangle(color: .primary))
                
                SecureField("Confirm password", text: self.$viewModel.confirmPassword)
                    .modifier(CustomRoundedRectangle(color: .primary))
                
                Button(action: {
                    self.viewModel.message = "Logged in as \(self.viewModel.email)"
                }) {
                    Text("Login")
                        .font(.title)
                        .fontWeight(.heavy)
                        .frame(width: proxy.size.width, height: 50.0)
                }
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                .opacity(self.viewModel.shouldlogin ? 1.0 : 0.6)
                .disabled(!self.viewModel.shouldlogin)
                
                Text(self.viewModel.message)
                
                Spacer()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
