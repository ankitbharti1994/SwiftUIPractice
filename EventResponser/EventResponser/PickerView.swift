//
//  PickerView.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    private let friends = ["rohit", "garima", "kailash", "nitish"]
    @State var currentIndex = 0
    var body: some View {
        VStack {
            Picker("friends", selection: $currentIndex) {
                ForEach(0..<friends.count) {
                    Text(self.friends[$0]).tag($0)
                }
            }.padding()
            
            Text("Selected friend: \(friends[currentIndex])")
        }
    }
}

#if DEBUG
struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
#endif
