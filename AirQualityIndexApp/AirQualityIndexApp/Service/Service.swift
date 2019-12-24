//
//  Service.swift
//  AirQualityIndexApp
//
//  Created by ankit bharti on 21/12/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import Foundation

class Service: NSObject, URLCreatable {
    override init() {
        super.init()
    }
    
    func url(from api: String, apiKey: String, format: OutputFormat, offset: Int, limit: Int) -> URL? {
    //"https://api.data.gov.in/resource/3b01bcb8-0b14-4abf-b6f2-c1bfd384ba69?api-key=\(Constants.API_KEY)&format=\(OutputFormat.json)&offset=0&limit=10"
        
        let url = URL(string: "\(api)?api-key=\(apiKey)&format=\(format.rawValue)&offset=\(offset)&limit=\(limit)")
        
        return url
    }
    
    func fetch<Output: Decodable>(from offset: Int, _ data: @escaping ([Output]) -> Void) {
        guard let url = url(from: Constants.URL, apiKey: Constants.API_KEY, format: .json, offset: offset, limit: offset + Constants.LIMIT) else {
            return
        }
        
        let _ = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: [Output].self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { result in
                switch result {
                case .finished:
                    print("finished")
                    
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }) {
                data($0)
        }
    }
}
