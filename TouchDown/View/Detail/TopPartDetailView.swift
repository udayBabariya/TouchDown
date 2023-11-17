//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Properties
    @State private var isAnimating: Bool = false
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            
            // Price
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formatedPrice ?? "$ 0")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            } //: VStack
            .offset(y: isAnimating ? -50 : -74)

            Spacer()
            
            // Photo
            Image(shop.selectedProduct?.image ?? "")
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
                
            
        } // : HStack
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

//#Preview {
//    TopPartDetailView()
//}
