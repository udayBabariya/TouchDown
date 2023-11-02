//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - Property
    
    
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}
//
//#Preview {
//    FeaturedTabView()
//}
