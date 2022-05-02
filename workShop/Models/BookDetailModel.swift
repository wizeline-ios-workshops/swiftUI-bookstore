//
//  BookDetailModel.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import Foundation
import SwiftUI

struct BookDetail: Identifiable {
    var id: String
    var bookId: Int
    var author: String
    var title: String
    var price: Float
    var genre: [Genre]
    var kind: String
    var description: String
    var imageName: String
    var isAvailable: Bool
}

enum Genre: String {
    case fantasy = "Fantasy"
    case action = "Action"
    case history = "History"
    case business = "Business"
    case present = "Present"
    case economics = "Economics"
    case drama = "Drama"
    case scienceFiction = "Science Fiction"    
}


//extension BookDetailModel {
//
//    static func mockBooks() -> [BookDetailModel] {
//        return [
//            BookDetailModel(id: 2, author: "J. R. R. Tolkien", title: "The Fellowship of the Ring", price: 18.85, genre: [.fantasy, .action], kind: "Novel",description: "The Fellowship of the Ring is the first of three volumes in The Lord of the Rings, an epic set in the fictional world of Middle-earth. The Lord of the Rings is an entity named Sauron, the Dark Lord, who long ago lost the One Ring that contains much of his power. His overriding desire is to reclaim the Ring and use it to enslave all of Middle-earth.", cover: "fellow")]
//    }
//}
