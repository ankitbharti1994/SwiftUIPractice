//
//  Service.swift
//  Github-Repo-SwiftUI
//
//  Created by ankit bharti on 06/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation
import Combine

struct Service {
    static let url = URL(string: "https://api.github.com/users/ankitbharti1994/repos")!
    
    static func fetchAllRepo() -> AnyPublisher<[Repositry], Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue(label: "com.ankit.service"))
            .map(\.data)
            .decode(type: [Repositry].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
