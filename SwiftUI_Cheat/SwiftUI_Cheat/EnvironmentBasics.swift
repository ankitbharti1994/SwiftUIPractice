//
//  EnvironmentBasics.swift
//  SwiftUI_Cheat
//
//  Created by ankit bharti on 07/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct User {
    var score: Int = 0
}

// MARK: - Create custom environment key
struct SettingsEnvironmentValues: EnvironmentKey {
    typealias Value = User
    
    static var defaultValue: User = User(score: 100)
}

// MARK: - Make the custom environment key available to environment
extension EnvironmentValues {
    var user: User {
        get { self[SettingsEnvironmentValues.self] }
        set { self[SettingsEnvironmentValues.self] = newValue }
    }
}
