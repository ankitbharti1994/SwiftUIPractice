//
//  TodoItemView.swift
//  TodoTask
//
//  Created by ankit bharti on 01/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct TodoItemView: View {
    let item: TodoItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title!)
                .font(.title)
            Text("\(item.createdAt!)")
                .font(.subheadline)
        }
    }
}
