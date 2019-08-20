//
//  ContextMenuView.swift
//  Alerts
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        Text("Friends")
            .contextMenu {
                Button(action: {
                    print("Rohit selected")
                }) {
                    Image(systemName: "globe")
                    Text("Rohit Shrivastva")
                }
                
                Button(action: {
                    print("Garima selected")
                }) {
                    Image(systemName: "location.circle")
                    Text("Garima Sharma")
                }
            }
    }
}

#if DEBUG
struct ContextMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuView()
    }
}
#endif
