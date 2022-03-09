//
//  HorizontalGridView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл Тараско on 09.03.2022.
//

import SwiftUI

struct HorizontalGridView: View {
    let data = (1...100).map { "Item: \($0)" }
    let rows = [
        
        GridItem(.flexible(maximum: .infinity)),
        GridItem(.flexible(minimum: 200)),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView (.horizontal){
            LazyHGrid(rows: rows, alignment: .top, spacing: 10) {
                ForEach(data, id: \.self) {
                    item in
                    Text(item)
                }
            }
        }
    }
}



struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
