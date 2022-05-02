//
//  BookListView.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import SwiftUI

struct BookListView: View {
    var body: some View {
        NavigationView {
            List(MockBookService().bookList()) { book in
                NavigationLink(destination: BookDetailView(id: book.id)) {
                    BookRow(book: book)
                        .padding()
                }
            }
            .navigationTitle("Book List")
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
