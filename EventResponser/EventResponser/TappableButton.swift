//
//  TappableButton.swift
//  EventResponser
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct TappableButton: View {
    @State var isRequiredDetails = false
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                self.isRequiredDetails.toggle()
            }) {
                Image("ankit")
            }
            
            if isRequiredDetails {
                Divider()
                Text("ankit bharti")
                    .font(.largeTitle)
            }
        }
    }
}

#if DEBUG
struct TappableButton_Previews: PreviewProvider {
    static var previews: some View {
        TappableButton()
    }
}
#endif
