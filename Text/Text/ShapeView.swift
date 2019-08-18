//
//  ShapeView.swift
//  Text
//
//  Created by ankit bharti on 17/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
//        Rectangle()
//        .frame(width: 50, height: 50, alignment: .center)
//        Circle()
//        .fill(Color.red)
//        .frame(width: 100.0, height: 100.0)
        Text("ankit bharti")
        .foregroundColor(.black)
        .font(.largeTitle)
        .background(
            Image("ankit")
        )
    }
}

#if DEBUG
struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
#endif
