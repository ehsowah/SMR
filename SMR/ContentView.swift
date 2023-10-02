//
//  ContentView.swift
//  SMR
//
//  Created by ehsowah on 9/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isFirstTime = true
    
    var body: some View {
        HomeView(done: $isFirstTime)
            .popover(isPresented: $isFirstTime) {
                GetStartView(done: $isFirstTime)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
