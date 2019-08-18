//
//  ExtendedContentView.swift
//  Layout
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    let id: Int
    let name: String
}

extension Int: Identifiable {
    public var id: ObjectIdentifier {
        ObjectIdentifier(Int.self)
    }
}

struct ExtendedContentView: View {
    let users = [User(id: 1, name: "ankit"), User(id: 2, name: "rohit"), User(id: 3, name: "kailash")]
    var body: some View {
        VStack {
            ForEach(users) {
                Text($0.name)
                Divider()
            }
        }
    }
}

#if DEBUG
struct ExtendedContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExtendedContentView()
    }
}
#endif
