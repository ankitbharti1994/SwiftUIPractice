//
//  ImageView.swift
//  UIController_SwiftUI
//
//  Created by ankit bharti on 01/09/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .edgesIgnoringSafeArea([.top, .bottom])
    }
}
