//
//  FriendsView.swift
//  Navigation
//
//  Created by ankit bharti on 20/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct FriendsDetails: View {
    var name: String
    var body: some View {
        Text(name)
            .font(.largeTitle)
    }
}

struct FriendsView: View {
    private var friends = ["Ankit", "Rohit", "Kailash"]
//    @State private var isPresentingSheet = false
    
    var body: some View {
        NavigationView {
            List(friends, id: \.self) { name in
                NavigationLink(destination: FriendsDetails(name: name)) {
                    Text(name)
                }
//                Button(action: {
//                    self.isPresentingSheet.toggle()
//                }, label: {
//                    Text(name)
//                })
//                    .sheet(isPresented: self.$isPresentingSheet) {
//                        FriendsDetails(name: name)
//                    }
            }.navigationBarTitle("Friends")
        }
    }
}

#if DEBUG
struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
#endif
