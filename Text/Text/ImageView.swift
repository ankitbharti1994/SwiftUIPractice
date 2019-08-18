//
//  ImageView.swift
//  Text
//
//  Created by ankit bharti on 17/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        // present image using name in assets.xcassets folder or using systemName or using UIImage
        // Image("ankit")
         Image(systemName: "cloud.heavyrain.fill")
            .foregroundColor(.red)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//        guard let image = UIImage(named: "ankit") else {
//            fatalError("image couldn't load.")
//        }
//
//        return Image(uiImage: image)
    }
}

#if DEBUG
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
#endif
