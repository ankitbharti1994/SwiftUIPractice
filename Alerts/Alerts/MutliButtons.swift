//
//  MutliButtons.swift
//  Alerts
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct MutliButtons: View {
    @State private var shouldShouldAlert = false
    
    var body: some View {
        Button(action: {
            self.shouldShouldAlert.toggle()
        }) {
            Text("Present Alert")
        }
        .alert(isPresented: $shouldShouldAlert) {
            Alert(title: Text("Info"),
                  message: Text("It's my first alert in SwiftUI with primary button & Dismiss button."),
                  primaryButton: .default(Text("Done"), action: {
                print("Primary button clicked.")
            }), secondaryButton: .cancel())
        }
    }
}

#if DEBUG
struct MutliButtons_Previews: PreviewProvider {
    static var previews: some View {
        MutliButtons()
    }
}
#endif
