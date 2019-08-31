//
//  PersonRow.swift
//  Dashboard_SwiftUI
//
//  Created by ankit bharti on 31/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    let country: String
    let players: [Player]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(country)
                .font(.largeTitle)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0.0) {
                    ForEach(self.players) {
                        PlayerView(person: $0)
                    }
                }
            }
        }
    }
}
