//
//  FriendView.swift
//  ListView
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct Friend: Identifiable {
    var id = UUID()
    var name: String
}

struct FriendView: View {
    let friend: Friend
    var body: some View {
        Text(friend.name)
    }
}
