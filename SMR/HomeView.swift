//
//  HomeView.swift
//  SMR
//
//  Created by ehsowah on 9/20/23.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var model = ViewModel()
    @State private var count = 0
    var body: some View {
        VStack {
            
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(Color("robotBlue"))
                                .shadow(color: .black, radius: 20, x: 0, y: 10)
                
                VStack {
                    HStack(spacing: 20) {
                        Image("logo")
                            .resizable()
                            .frame(width: 150)
                            .aspectRatio(contentMode: .fit)
                            
                        
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
                .padding(30)
                .cornerRadius(20)
            }
            .frame(height: 250)
            .padding()
        }
        
        Button {
            print("action")
        } label: {
            Text("Camera")
                .foregroundColor(.white)
                .frame(width: 150)
                .padding()
                .background(Color.orange)
                .cornerRadius(25)
        }

        Button {
            print("Detected Object")
            count += 1
            model.setData(count)
        } label: {
            Text("Detected Object")
                .foregroundColor(.white)
                .frame(width: 150)
                .padding()
                .background(Color.orange)
                .cornerRadius(25)
        }
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
