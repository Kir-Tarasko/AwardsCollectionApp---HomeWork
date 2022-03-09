//
//  CustomGridView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл Тараско on 09.03.2022.
//

import SwiftUI

struct CustomGridView<Content, T>: View where Content: View {
    let items: [T]
    let columns: Int
    let content: (T, CGFloat) -> Content
    
    var rows: Int { items.count / columns }
    
    var body: some View {
        GeometryReader { geometry in
            
            let sideSize = geometry.size.width / CGFloat(columns)
            
            ScrollView {
                VStack {
                    ForEach(0...rows, id: \.self) {
                        rowIndex in
                        HStack(spacing: 0) {
                            ForEach(0..<columns) {
                                columnIndex in
                                if let index = elementRow(row: rowIndex, column: columnIndex) {
                                    content(items[index],
                                            sideSize)
                                } else {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private  func elementRow(row: Int, column: Int) -> Int? {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
    
}

struct CustomGridView_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridView(items: [11, 3, 4, 7, 76, 2, 1], columns: 4) {
            item, size in
            Text("\(item)")
                .frame(width: size, height: size)
        }
    }
}
