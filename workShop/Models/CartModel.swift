//
//  CartModel.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 30/04/22.
//

import Foundation

struct Cart {
    var items: [Item]
    var numberOfItems: Int
    var total: Double
}

struct Item: Identifiable {
    var id: String
    var item: Book
    var units: Int
}
