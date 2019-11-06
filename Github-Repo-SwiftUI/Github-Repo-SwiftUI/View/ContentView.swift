//
//  ContentView.swift
//  Github-Repo-SwiftUI
//
//  Created by ankit bharti on 06/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = RepoViewModel()
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.datasource) { repo in
                    NavigationLink(destination: DetailRepoView(repo: repo)) {
                        VStack(alignment: .leading) {
                            Text(repo.name)
                                .font(.headline)
                            Text(repo.html_url)
                                .font(.subheadline)
                        }
                    }
                }.onDelete { indexSet in
                    self.viewModel.datasource.remove(at: indexSet.first!)
                }
            }
            .navigationBarTitle("Ankit's Github repo")
            .navigationBarItems(leading: DownloadButton(viewModel: viewModel), trailing: EditButton())
        }
    }
}
