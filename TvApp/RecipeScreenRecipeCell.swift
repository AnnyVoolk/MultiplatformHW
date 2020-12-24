//
//  RecipeScreenRecipeCell.swift
//  TvApp
//
//  Created by Anna Volkova on 24.12.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct RecipeScreenRecipeCell: View {
    
    @State var isFocused = false
    @State var title: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
            Text(description)
                .font(.callout)
            Spacer()
        }
        .frame(height: 64)
        .scaleEffect(isFocused ? 1.2 : 1)
        .focusable(true) { newState in self.isFocused = newState }
        .animation(.easeInOut)
    }
}
