//
//  ContentView.swift
//  SwiftUI_CheatSeat
//
//  Created by ankit bharti on 12/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    @State var selectedDate: Date
    @State var value = 0
    @State var currentValue = 0.0
    @State var favouriteColorIndex = 0
    var colors = ["Pipe", "Fluid", "Transducer", "Placement"]
    
    var body: some View {
        List {
            Text("Birthday: \(selectedDate, formatter: dateFormatter)")
            DatePicker(selection: $selectedDate, displayedComponents: .date) {
                Text("")
            }
            .datePickerStyle(DefaultDatePickerStyle())
            
            Stepper(onIncrement: {
                self.value += 1
            }, onDecrement: {
                self.value -= 1
            }) {
                Text("Numbers")
            }
            
            Text("Current value: \(value), Current slider value: \(currentValue)")
            
            Slider(value: $currentValue, in: 0...100)
            
            Picker(selection: $favouriteColorIndex, label: Text("")) {
                ForEach(0..<colors.count) {
                    Text(self.colors[$0])
                        .tag($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Text("Selected \(colors[favouriteColorIndex])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedDate: Date())
    }
}
