//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Uday on 06/11/23.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    //MARK: - Property
    @State private var counter: Int = 0
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            })
            
        }) //:HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//#Preview {
//    QuantityFavouriteDetailView()
//}