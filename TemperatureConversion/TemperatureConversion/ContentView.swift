//
//  ContentView.swift
//  TemperatureConversion
//
//  Created by ankit bharti on 24/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var actualTemperature: String = "0.0"
    @State private var temperatureTypeFrom: TemperatureType = .celsius
    @State private var temperatureTypeTo: TemperatureType = .fahrenheit
    
    private var convertedTemperature: String {
        let measurement = Measurement(value: Double(actualTemperature) ?? 0.0, unit: temperatureTypeFrom.description.unit)
        let convertedTemp = measurement.converted(to: temperatureTypeTo.description.unit)
        return String(format: "%.2f", arguments: [convertedTemp.value])
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Temperature", text: $actualTemperature)
                        .keyboardType(.decimalPad)
                }
                
                TemperatureSelectionView(title: "What temperature are you converting from", temperatureType: $temperatureTypeFrom)
                
                TemperatureSelectionView(title: "What temperature are you converting to", temperatureType: $temperatureTypeTo)
                
                Section(header: Text("The converted temperature is")) {
                    Text(convertedTemperature)
                }
            }
            .navigationBarTitle("Converter")
            .onTapGesture(count: 2) {
                UIApplication.shared.endEditing()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
