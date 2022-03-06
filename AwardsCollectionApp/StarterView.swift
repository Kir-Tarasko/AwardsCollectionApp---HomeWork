//
//  StarterView.swift
//  AwardsCollectionApp
//
//  Created by Alexey Efimov on 17.06.2021.
//

import SwiftUI

@available(iOS 15.0, *)

struct StarterView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Main")
                }
            
            AwardsView()
                .tabItem {
                    Image(systemName: "pencil.and.outline")
                    Text("Awards")
                }
        }
    }
}

@available(iOS 15.0, *)

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
