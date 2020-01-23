//
//  ContentView.swift
//  AccessibilityPractice
//
//  Created by ankit bharti on 20/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedDate = Date()
    @Environment(\.sizeCategory) private var sizeCategory
    
    var body: some View {
        VStack {
            Button(action: {
                
            }) {
                Image("swiftui")
                    .renderingMode(.original)
            }
            
            Button(action: {
                
            }) {
                Text("Change language")
            }
            
            Text(LocalizedStringKey("Hello"))
                .foregroundColor(.primary)
                .font(Font.system(.headline, design: .rounded))
                .padding()
            
            DatePicker(selection: $selectedDate, displayedComponents: [.date]) {
                Color.clear
            }.offset(x: -60, y: 0)
        }
    }
}

extension Image {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
