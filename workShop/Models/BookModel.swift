//
//  BookModel.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import Foundation
import SwiftUI

struct Book: Identifiable {
    var id: Int
    var author: String
    var title: String
    var description: String
    var cover: String
}
