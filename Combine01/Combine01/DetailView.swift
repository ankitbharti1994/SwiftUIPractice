//
//  DetailView.swift
//  Combine01
//
//  Created by ankit bharti on 25/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let user: User
    var body: some View {
        Text(user.name)
    }
}
