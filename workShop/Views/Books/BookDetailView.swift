//
//  BookDetailView.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 28/04/22.
//

import SwiftUI

struct BookDetailView: View {
    var id: Int
    @EnvironmentObject var viewModel: BookViewModel

    var body: some View {
        VStack {
            Spacer()
            cover
            author
                .padding(.top, 16)
            title
            description
            createCategories(genres: viewModel.book?.genre)
            Divider()
                .padding()
            Spacer()
            createBuyButton(price: "19.86$")
            Spacer()
        }.onAppear {
            viewModel.getBookById(id)
        }
    }
    
    var author: some View {
        Text(viewModel.book?.author ?? "")
            .foregroundColor(.gray)
    }
    
    var title: some View {
        Text(viewModel.book?.title ?? "")
            .bold()
    }
    
    var cover: some View {
        Image(viewModel.book?.imageName ?? "")
            .resizable()
            .frame(width: 180, height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
    
    var description: some View {
        Text(viewModel.book?.description ?? "")
            .foregroundColor(.gray)
            .lineLimit(4)
            .padding()
    }
    
    
    func createCategories(genres: [Genre]?) -> some View {
        HStack {
            Spacer()
            if let genres = genres {
                ForEach(genres, id: \.self) { genre in
                    createCategoryCell(name: genre.rawValue)
                    
                }
            }            
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
        BookDetailView(id: 1)
            .environmentObject(BookViewModel())
    }
}
