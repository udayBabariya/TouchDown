//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Uday on 03/11/23.
//

import SwiftUI

struct ProductItemView: View {
    
    //MARK: - Properties
    var product: Product
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZStack
            .background(Color(red: product.red,
                              green: product.green,
                              blue: product.blue))
            .cornerRadius(12)
            
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        } //: VStack
    }
}

//#Preview {
//    ProductItemView()
//}
