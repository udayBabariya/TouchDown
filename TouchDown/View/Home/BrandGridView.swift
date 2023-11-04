//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Uday on 04/11/23.
//

import SwiftUI

struct BrandGridView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout,spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            }) //: Grid
            .frame(height: 200)
            .padding(15)
        } //: Scroll
    }
}

//#Preview {
//    BrandGridView()
//}
