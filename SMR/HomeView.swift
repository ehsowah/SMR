//
//  HomeView.swift
//  SMR
//
//  Created by ehsowah on 9/20/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                            .fill(.red)
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
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
