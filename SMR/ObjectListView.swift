//
//  ObjectListView.swift
//  SMR
//
//  Created by ehsowah on 9/26/23.
//

import SwiftUI

struct ObjectListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Image("chair")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text("Chair 100%")
                        .bold()
                    Text("09-12-2023")
                        .font(.subheadline)
                    Text("Warning")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
            }
            
            Divider()
            
            HStack(alignment: .top) {
                Image("chair")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) {
                    Text("Chair 100%")
                        .bold()
                    Text("09-12-2023")
                        .font(.subheadline)
                    Text("Warning")
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
            }
        }
        .padding()
    }
}

struct ObjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectListView()
    }
}
