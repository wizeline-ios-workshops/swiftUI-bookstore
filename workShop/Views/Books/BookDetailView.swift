//
//  BookDetailView.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import SwiftUI

struct BookDetailView: View {
    var id: Int
//    @State var book: BookDetailModel = BookDetailModel.mockBooks()[0]
    var book = MockBookService().bookDetails(bookId: 1)

    var body: some View {
        VStack {
            Spacer()
            cover
            author
                .padding(.top, 16)
            title
            description
            createCategories()
            Divider()
                .padding()
            Spacer()
            createBuyButton(price: "19.86$")
            Spacer()
        }.onAppear {
//            book = BookDetailModel.mockBooks().filter {$0.id == id}[0]
        }
    }
    
    var author: some View {
        Text(book.author)
            .foregroundColor(.gray)
    }
    
    var title: some View {
        Text(book.title)
            .bold()
    }
    
    var cover: some View {
        Image(book.imageName)
            .resizable()
            .frame(width: 180, height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
    
    var description: some View {
        Text(book.description)
            .foregroundColor(.gray)
            .lineLimit(4)
            .padding()
    }
    
    
    func createCategories() -> some View {
        HStack {
            Spacer()
            createCategoryCell(name: "Fantasy")
            createCategoryCell(name: "Action")
                .padding(.horizontal, 8)
            createCategoryCell(name: "Novel")
            Spacer()
        }
    }
    
    func createCategoryCell(name: String) -> some View {
        Text(name)
            .bold()
            .padding(.vertical, 4)
            .padding(.horizontal, 6)
            .background(Capsule().stroke(Color.gray))
    }
    
    func createBuyButton(price: String) -> some View {
        Button(action: {}) {
            Text("Buy for \(price)")
                .padding(.horizontal, 32)
        }
        .tint(.black)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(id: 1, book: MockBookService().bookDetails(bookId: 1))
    }
}
