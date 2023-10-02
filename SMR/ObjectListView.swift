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
            
            NavigationLink(destination: ObjectDetailView(name: item.name, confidence: item.confidence, date: item.date, imageURL: item.imageURL, danger: item.danger)) {
                HStack(alignment: .top) {
                    ImageView(withURL: item.imageURL)
                        .frame(width: 100, height: 100)
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

        .refreshable {
            model.objectList.removeAll()
            model.getDetectedObject()
        }
        
    }
}

struct ObjectListView_Previews: PreviewProvider {
    static var previews: some View {
        ObjectListView()
    }
}
