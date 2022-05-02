//
//  BookRow.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import SwiftUI

struct BookRow: View {
    let book: Book
    var body: some View {
        HStack(spacing: 32) {
            cover
            VStack(alignment: .leading) {
                title
                author
                price
                    .padding(.top, 4)
            }
        }
    }
    
    var cover: some View {
        Image(book.imageName)
            .resizable()
            .frame(width: 80, height: 140)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
    
    var title: some View {
        Text(book.title)
            .bold()
    }
    
    var author: some View {
        Text(book.author)
            .foregroundColor(.gray)
    }
    
    var price: some View {
        Text("$18.85")
            .foregroundColor(.green)
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: MockBookService().bookList()[0])
    }
}
