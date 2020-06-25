//
//  User.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 25/06/20.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    var friends: [User]? = nil
}

struct Dataset {
    static var data: [User] {
        var users = [User]()
        var ankit = User(name: "ankit", image: "app.fill")
        var rohit = User(name: "rohit", image: "circle.fill")
        var garima = User(name: "garima", image: "capsule.fill")
        let sumit = User(name: "sumit", image: "capsule.fill")
        let kailash = User(name: "kailash", image: "capsule.fill")
        let aakriti = User(name: "aakriti", image: "capsule.fill")
        let krunal = User(name: "krunal", image: "capsule.fill")
        let shruti = User(name: "shruti", image: "capsule.fill")
        let priyanka = User(name: "priyanka", image: "capsule.fill")
        let tanya = User(name: "tanya", image: "capsule.fill")

        
        ankit.friends = [krunal, shruti, priyanka, tanya]
        rohit.friends = [garima, sumit, kailash]
        garima.friends = [ankit, kailash, sumit, aakriti]
        users.append(contentsOf: [ankit, rohit, garima])
        return users
    }
}
