//
//  VerticalGridView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл Тараско on 09.03.2022.
//

import SwiftUI

struct VerticalGridView: View {
    
    let data = (1...100).map { "Item: \($0)" }
    let columns = [
        
        GridItem(.fixed(100)),
        GridItem(.flexible(maximum: 50)),
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(data, id: \.self) {
                    item in
                    Text(item)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
