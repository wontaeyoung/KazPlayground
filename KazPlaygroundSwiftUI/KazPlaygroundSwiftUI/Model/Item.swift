//
//  Item.swift
//  KazPlaygroundSwiftUI
//
//  Created by 원태영 on 2023/01/20.
//

import Foundation

struct Item : Identifiable {
    let id : String = UUID().uuidString
    let storeID : String
    let name : String
    let price : Int
}
