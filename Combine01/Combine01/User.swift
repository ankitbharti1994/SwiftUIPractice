//
//  User.swift
//  Combine01
//
//  Created by ankit bharti on 25/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

struct User: Codable, Identifiable {
    let id = UUID()
    let name: String
}
