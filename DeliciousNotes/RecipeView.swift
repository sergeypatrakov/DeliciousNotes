//
//  RecipeView.swift
//  DeliciousNotes
//
//  Created by Sergey Patrakov on 26.08.2024.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped()
            } placeholder: {
                ProgressView()
            }
            .frame(height: 300)
            .background(Color.gray)
            .cornerRadius(10)
            .padding()
            
            Text(recipe.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 10)
            
            Text(recipe.description)
                .font(.body)
                .padding(.top, 10)
                .padding(.horizontal)
            
            Spacer()
            
            if let steps = recipe.steps, !steps.isEmpty {
                NavigationLink(destination: RecipeStepsView(steps: steps)) {
                    Text("Просмотреть рецепт")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding(.bottom, 20)
            }
        }
        .navigationTitle("Описание рецепта")
        .navigationBarTitleDisplayMode(.inline)
    }
}
