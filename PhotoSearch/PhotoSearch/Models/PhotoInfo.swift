//
//  PhotoModel.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import Foundation
import UIKit

struct Photo: Codable, Identifiable {
    let id: String
    let title: String
    let secret: String
    let farm: Int
    let server: String
}

extension Photo {
    var imageURL: String {
        "https://farm\(farm).staticflickr.com/\(server)/\(id)_\(secret)_m.jpg"
    }
}

