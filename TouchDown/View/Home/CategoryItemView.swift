//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import SwiftUI

struct CategoryItemView: View {
    
    //MARK: - Properties
    let category: Category
    
    //MARK: - Body
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 14, height: 14, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

//#Preview {
//    CategoryItemView()
//}
