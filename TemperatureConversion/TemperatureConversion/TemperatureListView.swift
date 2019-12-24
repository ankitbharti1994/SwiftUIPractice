//
//  TemperatureListView.swift
//  TemperatureConversion
//
//  Created by ankit bharti on 24/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct TemperatureListView: View {
    @Binding var selectedTemperature: TemperatureType
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            List(TemperatureType.allCases, id: \.rawValue) { temp in
                Button(action: {
                    self.selectedTemperature = temp
                    self.isPresented.toggle()
                }) {
                    Text(temp.description.stringValue)
                }
                
                if self.selectedTemperature == temp {
                    Spacer()
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle(Text("Temperature List"), displayMode: .inline)
        }
    }
}
