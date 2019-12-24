//
//  TouchBarView.swift
//  Container_01
//
//  Created by ankit bharti on 20/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct TouchBarView: View {
    var body: some View {
        Text("Hello")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DifferentView: View {
    @State private var isOn = false
    var body: some View {
        Toggle(isOn: $isOn, label: {
            Text("Development")
        })
    }
}

struct TouchBarView_Previews: PreviewProvider {
    static var previews: some View {
        TouchBarView()
    }
}
