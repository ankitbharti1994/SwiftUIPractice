//
//  SliderView.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SliderView: View {
    @State var number: Double = 50
    var body: some View {
        VStack(spacing: 20.0) {
            Slider(value: $number, in: 0.0...100.0)
            Text("\(number)")
        }.padding()
    }
}

#if DEBUG
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
#endif
