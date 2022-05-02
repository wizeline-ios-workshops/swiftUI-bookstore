//
//  BookListView.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import SwiftUI

struct BookListView: View {
    @StateObject var bookVM = BookViewModel()
    
    var body: some View {
        NavigationView {
            List(bookVM.books) { book in
                NavigationLink(destination: BookDetailView(id: book.id).environmentObject(bookVM)) {
                    BookRow(book: book)
                        .padding()
                }
            }
            .navigationTitle("Book List")
        }.onAppear{
            bookVM.getBookList()
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
