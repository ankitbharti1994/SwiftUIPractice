//
//  ContentView.swift
//  EnvironmentObject_Practice
//
//  Created by ankit bharti on 19/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    @Published var isFavourite = false
}

struct ContentView: View {
    @EnvironmentObject var model: Model
    var body: some View {
        NavigationView {
            VStack(spacing: 10.0) {
                Text(model.isFavourite ? "Favourite" : "Not favourite")
                FavouriteButton(model: model)
                Spacer(minLength: 50)
                
                NavigationLink(destination: DetailView(model: model)) {
                    Text("Perform Next")
                }
            }
        }
    }
}

struct FavouriteButton: View {
    var model: Model
    var body: some View {
        Button(action: {
            self.model.isFavourite.toggle()
        }) {
            Text(model.isFavourite ? "Remove from favourite" : "Favourite")
        }
    }
}

struct DetailView: View {
    var model: Model
    var body: some View {
        VStack(spacing: 10.0) {
            Text(model.isFavourite ? "Favourite" : "Not favourite")
            FavouriteButton(model: model)
        }
    }
}


#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Model())
    }
}
#endif
