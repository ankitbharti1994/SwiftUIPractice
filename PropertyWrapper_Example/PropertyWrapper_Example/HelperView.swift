//
//  HelperView.swift
//  PropertyWrapper_Example
//
//  Created by ankit bharti on 07/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct HelperView: View {
    @EnvironmentObject var setting: UserSettings
    
    var body: some View {
        VStack {
            Text("\(setting.value)")
                .font(.largeTitle)
            Button(action: {
                self.setting.value += 1
            }) {
                Text("Increase count")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundColor(.purple)
        }
    }
}

#if DEBUG
struct HelperView_Previews: PreviewProvider {
    static var previews: some View {
        HelperView().environmentObject(UserSettings())
    }
}
#endif
