//
//  EnvironmentView.swift
//  Layout
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct EnvironmentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    var body: some View {
        Group {
            if horizontalSizeClass == .compact {
                Text("Compact")
            } else {
                Text("Regular")
            }
        }
    }
}

#if DEBUG
struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
#endif
