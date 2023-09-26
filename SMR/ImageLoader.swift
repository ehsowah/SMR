//
//  ImageLoader.swift
//  SMR
//
//  Created by ehsowah on 9/26/23.
//

import Foundation
import SwiftUI
import Combine

// source: https://stackoverflow.com/questions/60677622/how-to-display-image-from-a-url-in-swiftui
class ImageLoader: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(urlString: String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, self != nil else { return }
            DispatchQueue.main.async {
                self?.data = data
            }
        }
        task.resume()
    }
}
