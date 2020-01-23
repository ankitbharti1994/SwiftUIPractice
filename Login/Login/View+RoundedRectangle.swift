//
//  UIView+RoundedRectangle.swift
//  CombineDemo
//
//  Created by ankit bharti on 22/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct CustomRoundedRectangle: ViewModifier {
    let color: Color
    func body(content: Content) -> some View {
        content
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(height: 40.0)
            .cornerRadius(10.0)
            .border(color, width: 1.5)
    }
}
