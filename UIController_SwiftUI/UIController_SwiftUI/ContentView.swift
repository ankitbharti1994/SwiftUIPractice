//
//  ContentView.swift
//  UIController_SwiftUI
//
//  Created by ankit bharti on 01/09/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let images: [ImageView]
    
    init() {
        self.images = [
                        ImageView(image: "dhoni"),
                        ImageView(image: "virat"),
                        ImageView(image: "rahul"),
                        ImageView(image: "bumrah")
                    ]
    }
    
    var body: some View {
        PageView(self.images)
    }
}
