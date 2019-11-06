//
//  DownloadButton.swift
//  Github-Repo-SwiftUI
//
//  Created by ankit bharti on 06/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DownloadButton: View {
    var viewModel: RepoViewModel
    
    var body: some View {
        Button(action: {
            self.viewModel.reteriveRepo()
        }, label: {
            Image(systemName: "arrow.down.circle.fill")
                .font(.largeTitle)
        })
    }
}
