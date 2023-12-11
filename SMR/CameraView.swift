//
//  CameraView.swift
//  SMR
//
//  Created by ehsowah on 9/23/23.
//

import SwiftUI
import WebKit

struct CameraView: View {
    
    @ObservedObject var model = ViewModel()
    @State private var count = 0
    var url: String
    
    var body: some View {
        VStack {
            
            if let url = URL(string: url) {
                WebView(url: url)
                    .ignoresSafeArea()
                    .navigationTitle("Camera View")
                    .navigationBarTitleDisplayMode(.inline)
            }
            
            
            
//            VStack {
//                Button {
//                    model.setData("up")
//                } label: {
//                    Image(systemName: "arrow.up")
//                        .foregroundColor(.white)
//                        .frame(width: 50)
//                        .padding()
//                        .background(Color("robotBlue"))
//                        .cornerRadius(25)
//                }
//                
//                HStack {
//                    Button {
//                        model.setData("left")
//                    } label: {
//                        Image(systemName: "arrow.left")
//                            .foregroundColor(.white)
//                            .frame(width: 50)
//                            .padding()
//                            .background(Color("robotBlue"))
//                            .cornerRadius(25)
//                    }
//                    
//                    Button {
//                        model.setData("right")
//                    } label: {
//                        Image(systemName: "arrow.right")
//                            .foregroundColor(.white)
//                            .frame(width: 50)
//                            .padding()
//                            .background(Color("robotBlue"))
//                            .cornerRadius(25)
//                    }
//                }
//                
//                Button {
//                    model.setData("down")
//                } label: {
//                    Image(systemName: "arrow.down")
//                        .foregroundColor(.white)
//                        .frame(width: 50)
//                        .padding()
//                        .background(Color("robotBlue"))
//                        .cornerRadius(25)
//                }
//
//            }
//            .padding()
        }
    }
}

