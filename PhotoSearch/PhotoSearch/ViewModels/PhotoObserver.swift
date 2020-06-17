//
//  PhotoObserver.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI
import Combine

class PhotoObserver: ObservableObject {
    @Published var photoInfos: [Photo] = []
    private let service = Service()
    private var cancellableResponse: AnyCancellable?
    
    init() {
        self.subscriberResponsePublisher()
    }
    
    func updateResult(by searchText: String) {
        guard searchText.count >= 3 else {
            photoInfos = []
            return
        }
        
        service.search(by: searchText)
    }
    
    private func subscriberResponsePublisher() {
        self.cancellableResponse = service.didReceivedResponse
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { responses in
                self.photoInfos.removeAll()
                responses.forEach { response in
                    self.photoInfos.append(response)
                }
        })
    }
}
