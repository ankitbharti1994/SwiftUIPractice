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
    
    var description: (stringValue: String, shortName: String, unit: UnitTemperature) {
        switch self {
        case .celsius:
            return (stringValue: "Celsius", shortName: "°C", unit: .celsius)
        
        case .fahrenheit:
            return (stringValue: "Fahrenheit", shortName: "°F", unit: .fahrenheit)
            
        case .kelvin:
            return (stringValue: "Kelvin", shortName: "K", unit: .kelvin)
        }
    }
}
