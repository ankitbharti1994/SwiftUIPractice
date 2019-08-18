//
//  DestinationView.swift
//  AdvancedState
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DestinationView: View {
    @EnvironmentObject private var settings: UserSettings
    
    var body: some View {
        Text("Your score: \(settings.score)")
    }
}

#if DEBUG
struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView()
    }
}
#endif
