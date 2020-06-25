//
//  CircularProgress.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 24/06/20.
//

import SwiftUI

struct ActivityIndicatorView: View {
    @State private var isRunning = false
    var body: some View {
        VStack(spacing: 20.0) {
            if isRunning {
                ProgressView("Fetching details...")
            }
            
            Button(isRunning ? "Stop" : "Start") {
                withAnimation {
                    isRunning.toggle()
                }
            }
        }
        .labelsHidden()
        .padding()
    }
}

struct CircularProgress_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicatorView()
    }
}
