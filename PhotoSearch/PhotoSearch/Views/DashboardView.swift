//
//  DashboardView.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject private var observer = PhotoObserver()
    @State private var searchText = String()
    
    private var bindableSearchText: Binding<String> {
        Binding(get: {
            self.searchText
        }) {
            self.searchText = $0
            self.observer.updateResult(by: self.searchText)
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(placeholder: "search", searchText: bindableSearchText)
                List(observer.photoInfos) { photo in
                    NavigationLink(destination: DetailPhotoView(photo: photo)) {
                        PhotoCellView(photo: photo)
                    }
                }
                .listStyle(GroupedListStyle())
            }
            .navigationBarTitle("Photo Search")
        }
    }
}
