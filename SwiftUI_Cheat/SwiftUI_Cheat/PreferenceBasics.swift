//
//  PreferenceBasics.swift
//  SwiftUI_Cheat
//
//  Created by ankit bharti on 07/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct SettingPreferenceKey: PreferenceKey {
    typealias Value = Bool
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue() || value
    }
}

