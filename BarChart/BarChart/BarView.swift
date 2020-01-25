//
//  BarView.swift
//  BarChart
//
//  Created by ankit bharti on 25/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct BarView: View {
    let value: Double
    let label: String
    let maxValue: Double
    
    private let labelHeight: CGFloat = 30.0
    private let barWidth: CGFloat = 40.0
    private let maximumValue: CGFloat = 100.0
    private let itemSpacing: CGFloat = 10.0
    private let margin: CGFloat = 20.0

    private func barHeight(from proxy: GeometryProxy) -> CGFloat {
        let height = proxy.frame(in: .local).height
        let remainingHeight = height - self.labelHeight - self.itemSpacing
        let _1PointValue = remainingHeight / CGFloat(self.maxValue)
        let finalHeight = _1PointValue * CGFloat(self.value)
        return finalHeight
    }
    
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                Text(self.label)
                    .font(.footnote)
                    .foregroundColor(.primary)
                    .frame(width: self.barWidth, height: self.labelHeight)
                    .rotationEffect(.degrees(-45.0))
                    .position(x: proxy.frame(in: .local).width * 1.5, y: proxy.size.height)
                    .padding(.bottom, self.itemSpacing / 2)
                
                VStack {
                    Spacer()
                    Text("\(Int(self.value))")
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: self.barWidth, height: self.barHeight(from: proxy))
                }
                .padding(.bottom, self.itemSpacing * 2)
            }
        }
        .padding([.leading, .trailing, .bottom], self.margin)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 40.0, label: "Jan", maxValue: 100.0)
    }
}
