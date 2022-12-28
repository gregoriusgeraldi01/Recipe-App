//
//  TabBar.swift
//  RecipeAppUI
//
//  Created by Gregorius on 21/12/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("My Recipe", systemImage: "list.bullet.clipboard.fill")
                }
            
            CategoriesView()
                .tabItem {
                    Label("Categories", systemImage: "fork.knife.circle.fill")
                }
            
            NewRecipeView()
                .tabItem {
                    Label("New Recipe", systemImage: "plus")
                }
            
            EbookView()
                .tabItem {
                    Label("Online Recipe Book", systemImage: "book")
                }
            
            YoutubeView()
                .tabItem {
                    Label("Youtube", systemImage: "video")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipeViewModel())
    }
}
