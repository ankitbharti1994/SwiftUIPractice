//
//  TemperatureType.swift
//  TemperatureConversion
//
//  Created by ankit bharti on 24/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

enum TemperatureType: Int, CaseIterable {
    case celcious = 0, farenhite, kelvin
    
    var stringValue: String {
        switch self {
        case .celcious:
            return "Celcious"
            
        case .farenhite:
            return "Farenhite"
            
        case .kelvin:
            return "Kelvin"
        }
    }
}
