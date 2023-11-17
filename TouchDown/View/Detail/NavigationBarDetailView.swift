//
//  NaviagionBarDetailView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                feedback.impactOccurred()
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })
        } // : HStack
    }
}

//#Preview {
//    NaviagionBarDetailView()
//}
