//
//  SheetPresentation.swift
//  Navigation
//
//  Created by ankit bharti on 21/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SheetPresentation: View {
    @State private var isShowingDetails = false
    
    var body: some View {
        Button(action: {
            self.isShowingDetails.toggle()
        }) {
            Text("Show Sheet")
        }
        .sheet(isPresented: $isShowingDetails) {
           Text("Details as sheet.")
        }
    }
}

#if DEBUG
struct SheetPresentation_Previews: PreviewProvider {
    static var previews: some View {
        SheetPresentation()
    }
}
#endif
