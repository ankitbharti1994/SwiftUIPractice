//
//  ColorPickerView.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 24/06/20.
//

import SwiftUI

struct ColorPickerView: View {
    @State private var selectedColor: Color = .red
    var body: some View {
        VStack {
            ColorPicker(selection: $selectedColor, supportsOpacity: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, label: {
                Text("Select Color")
            })
            .labelsHidden()
        }
        .padding()
        .background(selectedColor)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
