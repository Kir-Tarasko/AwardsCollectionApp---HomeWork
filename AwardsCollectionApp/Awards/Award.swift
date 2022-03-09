//
//  Award.swift
//  AwardsCollectionApp
//
//  Created by Кирилл Тараско on 09.03.2022.
//

import SwiftUI

struct Award {
    
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    @available(iOS 15.0, *)
    static func getAwards() -> [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 160, height: 160)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView().frame(width: 160, height: 160)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 160, height: 160)),
                title: "Curves View",
                awarded: true
            ),
            Award(
                awardView: AnyView(LoadingView().frame(width: 160, height: 160)),
                title: "Loading View",
                awarded: true
            )
        ]
    }
    
}

