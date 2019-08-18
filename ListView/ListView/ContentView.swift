//
//  ContentView.swift
//  ListView
//
//  Created by ankit bharti on 18/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var friends = [Friend(name: "ankit bharti"), Friend(name: "rohit shrivastva"), Friend(name: "garima sharma"), Friend(name: "kailash kumar")]
    
    var body: some View {
        // 1st approach
        NavigationView {
            List {
                Section(header: Text("Close Friends").font(.headline)) {
                    ForEach(friends) {
                        FriendView(friend: $0)
                    }
                    .onMove(perform: self.move(from:to:))
                    .onDelete(perform: self.delete(_:))
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Friends")
        }
        
        // 2nd approach
//        List(friends) {
//            FriendView(friend: $0)
//        }
        
        // 3rd approach
//        List(friends, rowContent: FriendView.init)
    }
    
    func delete(_ indexSet: IndexSet) {
        if let firstIndex = indexSet.first {
            self.friends.remove(at: firstIndex)
        }
    }
    
    func move(from sourceIndexSet: IndexSet, to destination: Int) {
        friends.move(fromOffsets: sourceIndexSet, toOffset: destination)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
