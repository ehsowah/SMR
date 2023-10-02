//
//  ImageView.swift
//  SMR
//
//  Created by ehsowah on 9/26/23.
//

import SwiftUI

// source: https://stackoverflow.com/questions/60677622/how-to-display-image-from-a-url-in-swiftui
struct ImageView: View {
    
    @ObservedObject var imageLoader:ImageLoader
        @State var image:UIImage = UIImage()
    
        init(withURL url:String) {
            imageLoader = ImageLoader(urlString:url)
        }

        var body: some View {
            
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .background(Color.black)
                    .cornerRadius(10)
                    .onReceive(imageLoader.didChange) { data in
                    self.image = UIImage(data: data) ?? UIImage()
            }
        }
}

