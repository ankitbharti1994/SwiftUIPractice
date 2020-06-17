//
//  SearchBar.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    let placeholder: String
    @Binding var searchText: String
    
    func makeCoordinator() -> Coordinator {
        Coordinator(searchText: $searchText)
    }
    
    func makeUIView(context: Context) -> UISearchBar {
        let searchBar = UISearchBar()
        searchBar.placeholder = placeholder
        searchBar.text = searchText
        searchBar.delegate = context.coordinator
        searchBar.searchBarStyle = .minimal
        return searchBar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: Context) {
        uiView.text = searchText
    }
    
    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var searchText: String
        
        init(searchText: Binding<String>) {
            self._searchText = searchText
        }
        
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            self.searchText = searchText
            print(searchText)
        }
    }
}
