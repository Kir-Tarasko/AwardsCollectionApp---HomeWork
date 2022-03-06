//
//  LoadingView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл Тараско on 06.03.2022.
//

import SwiftUI

@available(iOS 15.0, *)

struct LoadingView: View {
    
    //    let width: CGFloat
    //    let height: CGFloat
    @State private var opacity = 1.0
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            HStack{
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 1.4)
                                .delay(0.2)
                                .repeatForever(autoreverses: true))
                
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 1.2)
                                .delay(0.4)
                                .repeatForever(autoreverses: true))
                
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 1.0)
                                .delay(0.6)
                                .repeatForever(autoreverses: true))
                
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 0.8)
                                .delay(0.8)
                                .repeatForever(autoreverses: true))
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 0.6)
                                .delay(1.0)
                                .repeatForever(autoreverses: true))
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 0.4)
                                .delay(1.2)
                                .repeatForever(autoreverses: true))
                Capsule()
                    .animation(nil)
                    .opacity(opacity)
                    .animation(Animation
                                .linear(duration: 0.2)
                                .delay(1.4)
                                .repeatForever(autoreverses: true))
            }
            .foregroundColor(.cyan)
            .frame(width: width, height: height)
            //        .onTapGesture{ opacity = 0.0 }
            .onAppear{ opacity = 0.0 }
        }
    }
    
    struct LoadingView_Previews: PreviewProvider {
        static var previews: some View {
            LoadingView()
            //   .frame(width: 200, height: 200)
        }
    }
    
}
