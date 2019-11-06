//
//  Repositry.swift
//  Github-Repo-SwiftUI
//
//  Created by ankit bharti on 06/11/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

struct Repositry: Decodable, Identifiable {
    let id: Int
    let name: String
    let html_url: String
}
