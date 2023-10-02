//
//  ObjectDetailView.swift
//  SMR
//
//  Created by ehsowah on 10/2/23.
//

import SwiftUI

struct ObjectDetailView: View {
    var name: String
    var confidence: Int
    var date: String
    var imageURL: String
    var danger: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            ImageView(withURL: imageURL)
                .border(danger ? .red : .green, width: 5)
                .cornerRadius(5)
               
            Text(name)
                .font(.title)
                .bold()
            
            Text("Confidence: \(confidence)%")
            Text("Detected on \(date)")
            
            Spacer()
        }
        .padding()
        
    }
}

