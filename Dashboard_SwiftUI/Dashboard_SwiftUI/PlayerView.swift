//
//  PersonView.swift
//  Dashboard_SwiftUI
//
//  Created by ankit bharti on 31/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    let person: Player
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            Image(person.img)
                .cornerRadius(15.0)
                .shadow(radius: 5.0)
            
            VStack(alignment: .leading, spacing: 4.0) {
                Text(person.name)
                    .font(.headline)
                
                Text(person.description)
                    .multilineTextAlignment(.leading)
                    .font(.subheadline)
                    .lineLimit(nil)
            }
        }
        .frame(width: 220.0, height: 400.0)
        .padding(.trailing)
    }
}
