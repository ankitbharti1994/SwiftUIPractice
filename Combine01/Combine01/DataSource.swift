//
//  DataSource.swift
//  Combine01
//
//  Created by ankit bharti on 25/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation
import Combine

class DataSource: ObservableObject {
    @Published var users = [User]()
    @Published var isCancelled = true
    private var queue = DispatchQueue(label: "com.swiftUI.datasource")
    private var dataQueryTimer: DispatchSourceTimer?
    
    func fetch() {
        let timer = DispatchSource.makeTimerSource(flags: .strict, queue: queue)
        self.dataQueryTimer = timer
        timer.schedule(deadline: .now() + 1.0, repeating: 1.0)
        timer.setEventHandler {
            let name = "User \(Int.random(in: 1...100))"
            let user = User(name: name)
            DispatchQueue.main.async {
                self.users.append(user)
            }
        }
        
        self.isCancelled = false
        timer.resume()
    }
    
    func cancel() {
        self.dataQueryTimer?.cancel()
        self.dataQueryTimer = nil
        self.isCancelled = true
    }
}
