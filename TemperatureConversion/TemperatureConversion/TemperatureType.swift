//
//  TemperatureType.swift
//  TemperatureConversion
//
//  Created by ankit bharti on 24/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

enum TemperatureType: Int, CaseIterable {
    case celsius = 0, fahrenheit, kelvin
    
    var stringValue: String {
        switch self {
        case .celsius:
            return "Celsius"
            
        case .fahrenheit:
            return "fahrenheit"
            
        case .kelvin:
            return "Kelvin"
        }
    }
    
    var unit: UnitTemperature {
        switch self {
        case .celsius:
            return .celsius
            
        case .fahrenheit:
            return .fahrenheit
            
        case .kelvin:
            return .kelvin
        }
    }
}
