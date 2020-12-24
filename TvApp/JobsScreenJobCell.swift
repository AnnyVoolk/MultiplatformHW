//
//  JobsScreenJobCell.swift
//  TvApp
//
//  Created by Anna Volkova on 24.12.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import SwiftUI

struct JobsScreenJobCell: View {
    
    @State var title: String
    @State var description: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
                .lineLimit(3)
                .multilineTextAlignment(.leading)
                .padding(.top, 20)
            Text(description)
                .font(.callout)
            Spacer(minLength: 20)
        }
        .frame(height: 64)
    }
}
