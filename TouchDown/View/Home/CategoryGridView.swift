//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import SwiftUI

struct CategoryGridView: View {
    
    //MARK: - Properties
    
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockWise: false),
                    footer: SectionView(rotateClockWise: true)
                ){
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                        
                    } //: Loop
                }
            }) //: Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            
        } //: Scroll
    }
}

//#Preview {
//    CategoryGridView()
//}
