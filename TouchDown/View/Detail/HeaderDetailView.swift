//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct HeaderDetailView: View {
    
    //MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? "")
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VStack
        .foregroundStyle(.white)
    }
}
//
//#Preview {
//    HeaderDetailView()
//}
