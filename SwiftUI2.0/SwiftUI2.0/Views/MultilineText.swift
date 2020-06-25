//
//  MultilineText.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 25/06/20.
//

import SwiftUI

struct MultilineText: View {
    @State private var text = "Write story"
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .foregroundColor(.red)
                .border(LinearGradient(gradient: .init(colors: [.green, .blue]), startPoint: .init(x: 0, y: 0), endPoint: .init(x: 1.0, y: 1.0)), width: 2.0)
                .cornerRadius(10.0)
                .padding()
                .accentColor(.red)
                .font(.headline)
                .frame(height: 300.0)
            
            Spacer()
        }
    }
}

struct MultilineText_Previews: PreviewProvider {
    static var previews: some View {
        MultilineText()
    }
}
