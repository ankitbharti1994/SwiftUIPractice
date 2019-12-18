//
//  ButtonStyleView.swift
//  CustomButton_Demo1
//
//  Created by ankit bharti on 13/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ButtonStyleView: View {
    @State var shouldAnimate = false
    var body: some View {
        Button(action: {
            self.shouldAnimate.toggle()
        }) {
            Text("Hello")
                .font(.largeTitle)
        }
        .buttonStyle(RoundedButton())
        .offset(x: 0, y: shouldAnimate ? -100.0 : 0)
    }
}

struct RoundedButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(Color.green)
            .animation(.spring())
    }
}

struct SomeThing: GeometryEffect {
    var shouldAnimate: Bool
    func effectValue(size: CGSize) -> ProjectionTransform {
        .init(.init(translationX: 0, y: shouldAnimate ? -100.0 : 0.0))
    }
}

struct ButtonStyleView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleView()
    }
}
