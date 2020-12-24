//
//  JobDescriptionScreen.swift
//  HomeWork2
//
//  Created by Anna Volkova on 01.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct JobDescriptionScreen: View {
    
    let description: String
    
    init(description: String) {
        self.description = description
    }
    
    var body: some View {
        ScrollView {
            Spacer()
            Text(self.description)
                .padding()
            }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarTitle("Full job description")
    }
}

struct JobDescriptionScreen_Previews: PreviewProvider {
    static var previews: some View {
        JobDescriptionScreen(description: "")
    }
}
