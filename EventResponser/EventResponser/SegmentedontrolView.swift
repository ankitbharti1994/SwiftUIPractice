//
//  SegmentedontrolView.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SegmentedontrolView: View {
    private let features = ["Energy", "Inputs", "Outputs", "User Function"]
    @State var currentFeature = 0
    
    var body: some View {
        VStack {
//            SegmentedControl(selection: $currentFeature) {
//                ForEach(0..<features.count) {
//                    Text(self.features[$0]).tag($0)
//                }
//            }
            
            Picker("", selection: $currentFeature) {
                ForEach(0..<features.count) {
                    Text(self.features[$0]).tag($0)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            Text("Selected feature: \(features[currentFeature])")
        }
    }
}

#if DEBUG
struct SegmentedontrolView_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedontrolView()
    }
}
#endif
