//
//  RepoViewModel.swift
//  Github-Repo-SwiftUI
//
//  Created by ankit bharti on 06/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation
import Combine

class RepoViewModel: ObservableObject {
    @Published var datasource: [Repositry] = []
    private var d = Set<AnyCancellable>()
    
    func reteriveRepo() {
        let _ = Service.fetchAllRepo()
            .sink(receiveCompletion: { completion in
                switch completion {
                case let .failure(error):
                    print(error.localizedDescription)
                    
                case .finished:
                    print("finished")
                }
            }) { result in
                DispatchQueue.main.async {
                    self.datasource = result
                }
        }
        .store(in: &d)
    }
}
