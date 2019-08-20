//
//  AlertSheetView.swift
//  Alerts
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct AlertSheetView: View {
    @State private var shouldShouldAlert = false
    
    var body: some View {
        Button(action: {
            self.shouldShouldAlert.toggle()
        }) {
            Text("Present Alert Sheet")
        }
        .actionSheet(isPresented: $shouldShouldAlert) {
            ActionSheet(title: Text("Info"), message: Text("Choose Friends"), buttons: [.cancel(), .default(Text("Ankit"), action: {
                print("Ankit selected.")
            }), .default(Text("Rohit"), action: {
                print("Rohit selected.")
            })])
        }
    }
}

#if DEBUG
struct AlertSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AlertSheetView()
    }
}
#endif
