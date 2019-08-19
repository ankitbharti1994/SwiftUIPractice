//
//  ContainerView.swift
//  FormsView
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        VStack {
            ForEach(1...20, id: \.self) {
                Text("\($0)")
            }
            
            /*
            Group {
                Text("0")
                Text("1")
                Text("2")
                Text("3")
                Text("4")
            }
            
            Group {
                Text("5")
                Text("6")
                Text("7")
                Text("8")
                Text("9")
                Text("10")
            }
             */
        }
    }
}

#if DEBUG
struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
#endif
