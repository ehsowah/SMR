//
//  HomeView.swift
//  SMR
//
//  Created by ehsowah on 9/20/23.
//

import SwiftUI

struct HomeView: View {
    
//    @Binding var done: Bool
    @State  private var url = "http://10.34.161.35:8000/"
    
    var body: some View {
        NavigationView {
            VStack {
//                Button("Instruction") {
//                    done = true
//                }
                ZStack {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(.white)
                        .shadow(color: .gray, radius: 40, x: 0, y: 10)
                        .frame(width: 500)
                    
                    VStack {
                        TextField("enter url", text: $url)
                        
                        HStack(spacing: 20) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 140)
                            
                            
                            VStack(alignment: .leading) {
                                Text("Status")
                                    .font(.title3)
                                    .bold()
                                HStack {
                                    Circle()
                                        .frame(width: 13)
                                        .foregroundColor(.green)
                                    Text("Connected")
                                }
                                
                                Text("Power")
                                    .font(.title3)
                                    .bold()
                                HStack {
                                    Circle()
                                        .frame(width: 13)
                                        .foregroundColor(.green)
                                    Text("100%")
                                }
                            }
                        }
                        
                        
                        
                    }
                    .frame(width: 400)
                    .padding(30)
                    .cornerRadius(20)
                }
                .frame(height: 250)
                .padding()
                
                NavigationLink(destination: CameraView(url: url)) {
                    Text("Camera")
                        .foregroundColor(.white)
                        .frame(width: 150)
                        .padding()
                        .background(Color("robotBlue"))
                        .cornerRadius(25)
                }
                
//                NavigationLink(destination: ObjectListView()) {
//                    Text("Detected Obj")
//                        .foregroundColor(.white)
//                        .frame(width: 150)
//                        .padding()
//                        .background(Color("robotBlue"))
//                        .cornerRadius(25)
//                }
            }
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
    
    
}

