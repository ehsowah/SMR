//
//  ViewModel.swift
//  SMR
//
//  Created by ehsowah on 9/22/23.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {
    @Published var value: String? = nil
    
    var ref = Database.database().reference()
    
    func getData() {
        ref.child("Turn").observeSingleEvent(of: .value) { snapshot in
            self.value = snapshot.value as? String ?? "load failed"
        }
    }
    
    func setData(_ turn: String) {
        ref.child("Turn").setValue(turn)
    }
}
