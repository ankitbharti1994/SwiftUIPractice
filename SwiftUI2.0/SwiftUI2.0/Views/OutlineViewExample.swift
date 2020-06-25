//
//  OutlineViewExample.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 25/06/20.
//

import SwiftUI

struct OutlineViewExample: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(Dataset.data) { data in
                    OutlineGroup(data, children: \.friends) { info in
                        UserView(user: info)
                    }
                }
            }
            .padding()
        }
    }
}

struct UserView: View {
    let user: User
    var body: some View {
        HStack(spacing: 16.0) {
            Image(systemName: user.image)
                .resizable()
                .frame(width: 16.0, height: 16.0)
            Text(user.name)
            Spacer()
        }
        .padding()
    }
}

struct OutlineViewExample_Previews: PreviewProvider {
    static var previews: some View {
        OutlineViewExample()
    }
}
