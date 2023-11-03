//
//  ContentView.swift
//  TouchDown
//
//  Created by Uday on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    
    //MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0 , y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        LazyVGrid(columns: gridLayout, spacing: 15, content: {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } //: Loop
                        }) //: Grid
                        .padding(15)
                        
                        FooterView()
                             .padding(.horizontal)
                    } //: VStack
                }) //: Scroll
            } // : VStack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } // : ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

//#Preview {
//    ContentView()
//}
