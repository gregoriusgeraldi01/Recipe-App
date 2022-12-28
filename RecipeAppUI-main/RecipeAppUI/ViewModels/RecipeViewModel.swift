//
//  RecipeViewModel.swift
//  RecipeAppUI
//
//  Created by Gregorius on 21/12/22.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
