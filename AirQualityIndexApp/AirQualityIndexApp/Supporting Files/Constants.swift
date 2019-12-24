//
//  Constants.swift
//  AirQualityIndexApp
//
//  Created by ankit bharti on 21/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

enum OutputFormat: String {
    case xml, json
}

protocol URLCreatable {
    func url(from api: String, apiKey: String, format: OutputFormat, offset: Int, limit: Int) -> URL?
}

enum Constants {
    static let API_KEY = "579b464db66ec23bdd0000013ce56f9b317446947f4c79b7984ce344"
    static let URL = "https://api.data.gov.in/resource/3b01bcb8-0b14-4abf-b6f2-c1bfd384ba69"
    static let LIMIT = 10
}
