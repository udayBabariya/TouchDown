//
//  AddToCartDetalView.swift
//  TouchDown
//
//  Created by Uday on 06/11/23.
//

import SwiftUI

struct AddToCartDetalView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        })
        .padding(15)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

//#Preview {
//    AddToCartDetalView()
//}
