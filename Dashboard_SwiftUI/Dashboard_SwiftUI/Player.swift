//
//  Person.swift
//  Dashboard_SwiftUI
//
//  Created by ankit bharti on 31/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct Player: Decodable, Identifiable {
    let id: Int
    let name: String
    let img: String
    let country: Country
    let description: String
}

enum Country: String, Decodable {
    case india = "India"
    case australia = "Australia"
    case africa = "South Africa"
    case srilanka = "Sri Lanka"
}

class Utility {
    private(set) var players: [Player] = []
    
    init() {
        self.reterive()
    }
    
    func reterive() {
        guard let url = Bundle.main.url(forResource: "player", withExtension: "json") else {
            return
        }
            
        let decoder = JSONDecoder()
        do {
            let data = try Data(contentsOf: url)
            self.players = try decoder.decode([Player].self, from: data)
        } catch {
            print(error)
        }
    }
}
