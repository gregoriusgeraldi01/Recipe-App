//
//  HomeView.swift
//  RecipeAppUI
//
//  Created by Gregorius on 21/12/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipeVM: RecipeViewModel
    var body: some View {
        NavigationView{
            RecipeList(recipes: recipeVM.recipes)
                .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipeViewModel())
    }
}
