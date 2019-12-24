//
//  ContentView.swift
//  TemperatureConversion
//
//  Created by ankit bharti on 24/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var actualTemperature: String = ""
    @State private var convertedTemperature: String = ""
    @State private var temperatureTypeFrom: TemperatureType = .celcious
    @State private var temperatureTypeTo: TemperatureType = .farenhite
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Temperature", text: $actualTemperature)
                }
                
                TemperatureSelectionView(title: "What temperature are you converting from", temperatureType: $temperatureTypeFrom)
                
                TemperatureSelectionView(title: "What temperature are you converting to", temperatureType: $temperatureTypeTo)
                
                Section(header: Text("The converted temperature is")) {
                    Text(convertedTemperature)
                }
            }
            .navigationBarTitle("Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
