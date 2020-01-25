//
//  ContentView.swift
//  BarChart
//
//  Created by ankit bharti on 25/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let data = DataSet.mockData
    private var maxValue: Double = 140.0
    
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(data) { data in
                    BarView(value: data.value, label: data.label, maxValue: self.maxValue)
                        .frame(height: 500.0)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.sizeThatFits)
    }
}
