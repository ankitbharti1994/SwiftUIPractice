//
//  DetailPhotoView.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DetailPhotoView: View {
    let photo: Photo
    let service = Service()
    @State private var image = UIImage(systemName: "")
    
    var body: some View {
        Image(uiImage: image ?? UIImage())
            .onReceive(service.didDownloadedImage) { downloadedImage in
                self.image = downloadedImage
            }
            .navigationBarTitle(Text(photo.title))
            .edgesIgnoringSafeArea(.bottom)
            .onAppear {
                self.service.image(for: self.photo)
            }
    }
}
