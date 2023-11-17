//
//  AddToCartDetalView.swift
//  TouchDown
//
//  Created by Uday on 06/11/23.
//

import SwiftUI

struct AddToCartDetalView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: shop.selectedProduct?.red ?? 0,
                  green:  shop.selectedProduct?.green ?? 0,
                  blue:  shop.selectedProduct?.blue ?? 0)
        )
        .clipShape(Capsule())
    }
}

//#Preview {
//    AddToCartDetalView()
//}
