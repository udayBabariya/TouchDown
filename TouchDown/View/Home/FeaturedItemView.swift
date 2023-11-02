//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - Property
    let player: Player
    
    //MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}

//#Preview {
//    FeaturedItemView()
//}
