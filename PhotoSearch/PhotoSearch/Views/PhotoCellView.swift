//
//  PhotoCell.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct PhotoCellView: View {
    let photo: Photo
    let service = Service()
    @State private var image = UIImage(systemName: "")
 
    var body: some View {
        HStack {
            Image(uiImage: image ?? UIImage())
                .resizable()
                .frame(width: 44, height: 44.0)
                .clipShape(Circle())
                .onReceive(service.didDownloadedImage) { downloadedImage in
                    self.image = downloadedImage
                }
            Text(photo.title)
                .lineLimit(nil)
        }
        .onAppear {
            self.service.image(for: self.photo)
        }
    }
}

