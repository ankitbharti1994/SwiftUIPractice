//
//  SplitView.swift
//  Container_01
//
//  Created by ankit bharti on 20/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SplitView: View {
    var body: some View {
        HSplitView() {
            List() {
                Text("Sidebar")
                Text("Sidebar")
                Text("Sidebar")
                Text("Sidebar")
            }
            .frame(width: 200.0)
            List() {
                Text("Content")
                Text("Content")
                Text("Content")
                Text("Content")
            }
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SplitView_Previews: PreviewProvider {
    static var previews: some View {
        SplitView()
    }
}
