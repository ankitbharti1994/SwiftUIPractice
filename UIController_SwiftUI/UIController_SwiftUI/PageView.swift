//
//  PageView.swift
//  UIController_SwiftUI
//
//  Created by ankit bharti on 01/09/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    var viewController: [UIHostingController<Page>]
    @State var currentPage = 0
    
    init(_ views: [Page]) {
        self.viewController = views.map {
            UIHostingController(rootView: $0)
        }
    }
    
    var body: some View {
        ZStack {
            PageViewContorller(controllers: viewController, currentPage: $currentPage)
            PageControl(numberOfPages: viewController.count, currentPage: $currentPage)
                .offset(x: 0, y: 390.0)
        }
    }
}
