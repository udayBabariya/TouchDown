//
//  FooterView.swift
//  TouchDown
//
//  Created by Uday on 01/11/23.
//

import SwiftUI

struct FooterView: View {
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Uday Babariya \nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
    }
}

//#Preview(traits: .sizeThatFitsLayout) {
//    FooterView()
//        .background(colorBackground)
//}
