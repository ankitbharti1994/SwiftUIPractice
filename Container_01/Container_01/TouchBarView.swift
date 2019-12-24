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
        DifferentView().touchBar (
            TouchBar {
                Button(action: {
                    
                }) {
                    Text("ankit")
                }
                
                Button(action: {
                    
                }) {
                    Text("rohit")
                }
            }
        )
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
