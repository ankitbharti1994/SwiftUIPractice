//
//  Request.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import Foundation

struct Response: Codable {
    let photos: AbstractPhoto
}

struct AbstractPhoto: Codable {
    let photo: [Photo]
}
