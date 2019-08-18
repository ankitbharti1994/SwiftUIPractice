//
//  Gesture.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct Gesture: View {
    var body: some View {
//        Image("ankit")
//            .onTapGesture(count: 2) {
//                print("Double tap performed.")
//        }
        
        Image("ankit")
        .gesture(
//            TapGesture(count: 1)
//                .onEnded({ _ in
//                    print("completed tap")
//                })
//            DragGesture(minimumDistance: 200.0, coordinateSpace: .global)
//                .onChanged({ value in
//                    print("new location: \(value)")
//                })
            LongPressGesture(minimumDuration: 2.0, maximumDistance: 50)
                .onEnded({ _ in
                    print("performed long press gesture.")
                })
        )
            .edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct Gesture_Previews: PreviewProvider {
    static var previews: some View {
        Gesture()
    }
}
#endif
