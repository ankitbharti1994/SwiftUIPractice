//
//  DisclosureView.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 26/06/20.
//

import SwiftUI

struct ToggleStates {
    var oneIsOn: Bool = false
    var twoIsOn: Bool = true
}

struct DisclosureView: View {
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true

    var body: some View {
        VStack {
            DisclosureGroup("Items", isExpanded: $topExpanded.animation()) {
                Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
                    .padding([.leading, .trailing])
                Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
                    .padding([.leading, .trailing])
                DisclosureGroup("Sub-items") {
                    Text("Sub-item 1")
                }
            }
            .padding()
            
            Spacer()
        }
    }
}

struct DisclosureView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureView()
    }
}
