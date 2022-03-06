//
//  AwardsView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)
struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LoadingView()
                        .frame(width: 250, height: 250)
                    GradientRectangles()
                        .frame(width: 250, height: 250)
                    PathView()
                        .frame(width: 250, height: 250)
                    CurvesView()
                        .frame(width: 250, height: 250)
                }
            }
            .navigationBarTitle("Awards")
        }
    }
}

@available(iOS 15.0, *)
struct AwardsView_Previews: PreviewProvider {
    static var previews: some View {
        AwardsView()
    }
}
