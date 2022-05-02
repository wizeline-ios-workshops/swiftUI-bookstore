//
//  BookViewModel.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 30/04/22.
//

import Foundation
import SwiftUI

class BookViewModel: ObservableObject {
    
    @Published var books: [Book] = []
    @Published var book: BookDetail?
    
    let service: BookService
    
    init(service: BookService = MockBookService()) {
        self.service = service
    }
    
    func getBookList() {
        books = service.bookList()
    }
    
    func getBookById(_ id: Int) {
        book = service.bookDetails(bookId: id)
    }
    
}
