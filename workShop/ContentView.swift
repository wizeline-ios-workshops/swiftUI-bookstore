//
//  ContentView.swift
//  workShop
//
//  Created by Peter Leyva Bazan on 27/04/22.
//

import SwiftUI

struct ContentView: View {
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
        }
    }
    
    var author: some View {
        Text("Michael Hirst")
            .foregroundColor(.gray)
    }
    
    var title: some View {
        Text("Vikings")
            .bold()
    }
    
    var cover: some View {
        Image("cover")
            .resizable()
            .frame(width: 180, height: 280)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
    }
    
    var description: some View {
        Text("The adventures of a Ragnar Lothbrok: the greatest hero of his age. The series tells the saga of Ragnar's band of Viking brothers and his family as he rises to become King of the Viking tribes. As well as being a fearless warrior, Ragnar embodies the Norse traditions of devotion to the gods: legend has it that he was a direct descendant of Odin, the god of war and warriors")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
