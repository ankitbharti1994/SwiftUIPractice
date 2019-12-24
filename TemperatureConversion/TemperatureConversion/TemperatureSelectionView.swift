//
//  TemperatureSelectionView.swift
//  TemperatureConversion
//
//  Created by ankit bharti on 24/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct TemperatureSelectionView: View {
    let title: String
    @State private var isPresented = false
    @Binding var temperatureType: TemperatureType
    
    var body: some View {
        Section(header: Text(title)) {
            HStack {
                Text("Temperature type")
                
                Spacer()
                
                Button(action: {
                    self.isPresented.toggle()
                }) {
                    Text(temperatureType.stringValue)
                }
                .sheet(isPresented: $isPresented) {
                    TemperatureListView(selectedTemperature: self.$temperatureType, isPresented: self.$isPresented)
                }
            }
        }
    }
}
