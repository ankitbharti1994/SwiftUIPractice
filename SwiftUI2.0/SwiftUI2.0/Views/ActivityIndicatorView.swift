//
//  ActivityIndicatorView.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 24/06/20.
//

import SwiftUI

struct ActivityIndicatorView: View {
    @State private var isRunning = false
    var body: some View {
        GeometryReader { proxy in
            VStack(spacing: 20.0) {
                Spacer()
                if isRunning {
                    ProgressView("Fetching details...")
                        .font(.largeTitle)
                }
            
                Spacer()
                
                Button(action: {
                    isRunning.toggle()
                }, label: {
                    Text(isRunning ? "Stop" : "Start")
                        .frame(width: proxy.frame(in: .global).size.width * 0.9, height: 44.0)
                        .background(Color(UIColor(red: 234.0/255.0, green: 77.0/255.0, blue: 61.0/255.0, alpha: 1.0)))
                        .foregroundColor(.white)
                        .cornerRadius(10.0)
                        .font(.headline)
                        .padding()
                })
            }
        }
        .labelsHidden()
    }
}

struct CircularProgress_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView()
    }
}
