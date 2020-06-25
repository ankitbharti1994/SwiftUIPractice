//
//  ScrollReaderView.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 25/06/20.
//

import SwiftUI

struct ScrollReaderView: View {
    let colors: [Color] = [.red, .green, .blue]

        var body: some View {
            ScrollView {
                ScrollViewReader { value in
                    Button("Jump to #8") {
                        withAnimation {
                            value.scrollTo(8)
                        }
                    }
                    
                    Spacer()
                        .frame(height: 10.0)

                    ForEach(0..<10) { i in
                        Text("Example \(i)")
                            .frame(width: 300, height: 300)
                            .background(colors[i % colors.count])
                            .id(i)
                    }
                }
            }
        }
}

struct ScrollReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollReaderView()
    }
}
