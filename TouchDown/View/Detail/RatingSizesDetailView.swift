//
//  RatingSizesDetailView.swift
//  TouchDown
//
//  Created by Uday on 06/11/23.
//

import SwiftUI

struct RatingSizesDetailView: View {
    
    //MARK: - Properties
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center,spacing: 3) {
            //Ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                           
                        }, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28)
                                .background(colorGray.cornerRadius(5))
                                .foregroundStyle(.white)
                        })
                    }
                }) //:HStack
            })
            Spacer()
            
                //Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {
                            
                        }, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        })
                    }
                })
            })
            
            
        } //:HStack
    }
}

//#Preview {
//    RatingSizesDetailView()
//}
