//
//  SafariView.swift
//  RecipeAppUI
//
//  Created by Gregorius Geraldi on 26/12/22.
//

import SwiftUI
import Foundation
import SafariServices


struct SafariView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SFSafariViewController {
         SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
    
    typealias UIViewControllerType = SFSafariViewController
    
    let url: URL
}
