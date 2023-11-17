//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom Bar
            VStack(alignment: .center, spacing: 0) {
                // Ratings + Sizes
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? "")
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                } // :Scroll
                
                // Quantity + Favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add To Cart
                AddToCartDetalView()
                    .padding(.bottom, 20)
            } // :VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
        } //: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? 0,
                  green: shop.selectedProduct?.green ?? 0,
                  blue: shop.selectedProduct?.blue ?? 0)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

//#Preview {
//    ProductDetailView()
//}
