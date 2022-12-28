//
//  RecipeAppUIApp.swift
//  RecipeAppUI
//
//  Created by Gregorius on 21/12/22.
//

import SwiftUI

@main
struct RecipeAppUIApp: App {
    @StateObject var recipeViewModel = RecipeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipeViewModel)
        }
    }
}
