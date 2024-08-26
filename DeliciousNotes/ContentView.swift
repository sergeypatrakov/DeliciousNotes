//
//  ContentView.swift
//  DeliciousNotes
//
//  Created by Sergey Patrakov on 26.08.2024.
//

import SwiftUI
  
struct ContentView: View {
    @StateObject private var loader = RecipeLoader()
    
    var body: some View {
        NavigationView {
            List(loader.recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe)) {
                    HStack {
                        AsyncImage(url: URL(string: recipe.imageURL)) { image in
                            image.resizable()
                                 .aspectRatio(contentMode: .fill)
                                 .frame(width: 80, height: 80)
                                 .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 80, height: 80)
                        .background(Color.gray)
                        .cornerRadius(10)
                        
                        Text(recipe.name)
                            .font(.headline)
                            .padding(.leading, 10)
                    }
                    .padding(.vertical, 10)
                }
            }
            .navigationTitle("Список рецептов")
        }
        .onAppear {
            loader.load()
        }
    }
}
