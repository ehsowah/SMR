//
//  GetStartView.swift
//  SMR
//
//  Created by ehsowah on 9/20/23.
//

import SwiftUI

struct GetStartView: View {
    
    @State private var isBegin = false
    @State private var step = 0
    @State private var stepDescription = "N/A"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if !isBegin {
                Text("SMR")
                    .font(.custom("Arial", size: 70))
                    .foregroundColor(.orange)
                    .bold()
                
                Text("Security Monitoring Robot")
                    .font(.body)
                    .foregroundColor(.gray)
                    .bold()
                
                Image("logo")
            } else {
                Spacer()
                Image("logo")
                Spacer()
                VStack(alignment: .leading) {
                    
                    Text("Step \(step)")
                        .font(.custom("Arial", size: 40))
                        .foregroundColor(.black)
                        .bold()
                    
                    Text(stepDescription)
                        .font(.body)
                        .foregroundColor(.gray)
                        .bold()
                }
                .padding()
                
                Button {
                    step += 1
                    instruction(step)
                } label: {
                    Text("Next")
                        .foregroundColor(.white)
                        .frame(width: 150)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(25)
                }
                Spacer()
                
            }
            
            Spacer()
            
            if !isBegin {
                Text("Security Monitoring Robot")
                    .font(.body)
                    .foregroundColor(.gray)
                    .bold()
                
                Button {
                    print("action")
                    isBegin = true
                } label: {
                    Text("Begin")
                        .foregroundColor(.white)
                        .frame(width: 150)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(25)
                }
            }
            Spacer()
        }
    }
    
    func instruction(_ step: Int) {
        switch step {
        case 1:
            stepDescription = "step 1 description"
        case 2:
            stepDescription = "step 2 description"
        case 3:
            stepDescription = "step 3 description"
        default:
            stepDescription = "N/A"
        }
    }
}

struct GetStartView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartView()
    }
}

