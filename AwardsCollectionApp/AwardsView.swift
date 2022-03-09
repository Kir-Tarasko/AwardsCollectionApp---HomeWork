//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct AwardsView: View {
    let awards = Award.getAwards()
    let columns = [ GridItem(.adaptive(minimum: 160, maximum: 200)) ]
    var activeAwards: [Award] {
        awards.filter { $0.awarded }
    }
    var body: some View {
        NavigationView {
            CustomGridView(items: activeAwards, columns: 2) {
                award, itemSize in
                VStack(spacing: 0) {
                    award.awardView
                    Text("\(award.title)")
                }
                .frame(width: itemSize, height: itemSize)
            }
            
            .navigationBarTitle("Awards: \(activeAwards.count)" )
        }
    }
}

@available(iOS 15.0, *)
struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
