//
//  ViewModel.swift
//  SMR
//
//  Created by ehsowah on 9/22/23.
//

import Foundation
import Firebase
import FirebaseFirestore

class ViewModel: ObservableObject {
    @Published var value: String? = nil
    @Published var objectList = [ObjectList]()
    
    var ref = Database.database().reference()
    
    func getData() {
        ref.child("Turn").observeSingleEvent(of: .value) { snapshot in
            self.value = snapshot.value as? String ?? "load failed"
        }
    }
    
    func setData(_ turn: String) {
        ref.child("Turn").setValue(turn)
    }
    
    func getDetectedObject() {
        let db = Firestore.firestore()
        
        db.collection("DetectedObjects").getDocuments { snapshot, error in
            
            if error == nil {
                
                if let snapshot = snapshot {
                    DispatchQueue.main.async {
                        self.objectList = snapshot.documents.map({ d in
                            return ObjectList(id: d.documentID,
                                              imageURL: d["imageURL"] as? String ?? "",
                                              name: d["name"] as? String ?? "",
                                              confidence: d["confidence"] as? Int ?? 0,
                                              date: d["date"] as? String ?? "",
                                              danger: d["danger"] as? Bool ?? false)
                        })
                    }
                }
            } else {
                print(error?.localizedDescription)
            }
            
        }
        
    }
}
