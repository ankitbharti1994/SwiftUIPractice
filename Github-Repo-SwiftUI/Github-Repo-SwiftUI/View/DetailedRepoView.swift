//
//  DetailedRepoView.swift
//  Github-Repo-SwiftUI
//
//  Created by ankit bharti on 06/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DetailRepoView: View {
    var repo: Repositry
    @State private var isPresented = false
    
    init(repo: Repositry) {
        self.repo = repo
    }
    
    var body: some View {
        VStack(spacing: 30.0) {
            Text(repo.name)
            Button(action: {
                self.isPresented.toggle()
            }) {
                Text("Open URL")
            }
            .sheet(isPresented: $isPresented) {
                Controller(url: URL(string: self.repo.html_url)!)
            }
        }
    }
}
