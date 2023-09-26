//
//  ObjectListView.swift
//  SMR
//
//  Created by ehsowah on 9/26/23.
//

import SwiftUI

struct ObjectListView: View {
    @ObservedObject var model = ViewModel()
    
    init() {
        model.getDetectedObject()
    }
    
    var body: some View {
        
        List (model.objectList) { item in
            HStack(alignment: .top) {
                ImageView(withURL: item.imageURL)
                
                VStack(alignment: .leading) {
                    Text("\(item.name) \(item.confidence)%")
                        .bold()
                    Text("\(item.date)")
                        .font(.subheadline)
                    Text(item.danger ? "Warning":"Not danger")
                        .font(.subheadline)
                        .foregroundColor(item.danger ? .red : .green)
                }
            }
        }
        
    }
}

struct ObjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectListView()
    }
}
