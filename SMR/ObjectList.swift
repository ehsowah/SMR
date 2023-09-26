//
//  ObjectList.swift
//  SMR
//
//  Created by ehsowah on 9/26/23.
//

import Foundation

struct ObjectList: Identifiable {
    let id: String
    let imageURL: String
    let name: String
    let confidence: Int
    let date: String
    let danger: Bool
}
