//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    //MARK: - Properties
    
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
            
            // Detail Bottom Bar
            
            // Ratings + Sizes
            
            // Description
            
            // Quantity + Favourite
            
            // Add To Cart
            Spacer()
            
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

//#Preview {
//    ProductDetailView()
//}
