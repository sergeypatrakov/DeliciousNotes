//
//  RecipeLoader.swift
//  DeliciousNotes
//
//  Created by Sergey Patrakov on 26.08.2024.
//

import Foundation

class RecipeLoader: ObservableObject {
    @Published var recipes: [Recipe] = []
    
    init() { load() }
    
    func load() {
        guard let url = Bundle.main.url(forResource: "recipes", withExtension: "json") else { return }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let loadedRecipes = try decoder.decode([Recipe].self, from: data)
            self.recipes = loadedRecipes
        } catch {
            print("Ошибка загрузки данных: \(error)")
        }
    }
}
