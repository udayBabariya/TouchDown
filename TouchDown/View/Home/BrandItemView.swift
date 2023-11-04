//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct BrandItemView: View {
    
    //MARK: - Properties
    let brand: Brand
    
    //MARK: - Body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

//#Preview {
//    BrandItemView()
//}
