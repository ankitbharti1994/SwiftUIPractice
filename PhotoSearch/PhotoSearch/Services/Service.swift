//
//  Service.swift
//  PhotoSearch
//
//  Created by ankit bharti on 14/06/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import Foundation
import Combine
import UIKit

class Service {
    private var cancelableSubject: AnyCancellable?
    private var cancelableImage: AnyCancellable?
    var didReceivedResponse = PassthroughSubject<[Photo], Never>()
    var didDownloadedImage = PassthroughSubject<UIImage, Never>()
    
    private func constructURL(from searchText: String) -> URL? {
        var urlString = Constants.BaseURI
        let components = [Constants.API, "&api_key=", Constants.APIKey, "&text=", searchText, "&format=json", "&nojsoncallback=1"]
        urlString.append(contentsOf: components.joined())
        return URL(string: urlString)
    }
    
    func search(by text: String) {
        guard let url = constructURL(from: text) else { return }
        cancelableSubject = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: Response.self, decoder: JSONDecoder())
            .replaceError(with: Response(photos: AbstractPhoto(photo: [])))
            .eraseToAnyPublisher()
            .sink(receiveValue: { [weak self] response in
                self?.didReceivedResponse.send(response.photos.photo)
            })
    }
    
    func image(for photo: Photo) {
        guard let url = URL(string: photo.imageURL) else { return }
        let request = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad, timeoutInterval: 5.0)
        self.cancelableImage = URLSession.shared.dataTaskPublisher(for: request)
            .receive(on: DispatchQueue.main)
            .map(\.data)
            .sink(receiveCompletion: { result in
                switch result {
                case .finished:
                    print("finished downloading image")
                case .failure(let error):
                    print(error)
                }
            }, receiveValue: { data in
                guard let image = UIImage(data: data) else { return }
                self.didDownloadedImage.send(image)
        })
    }
}
