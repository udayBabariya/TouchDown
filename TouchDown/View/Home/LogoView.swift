//
//  LogoView.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            
            Image("logo-dark")
                .resizable()
                .frame(width: 14, height: 14, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        } //: HStack
    }
}

//#Preview(traits: .sizeThatFitsLayout) {
//    LogoView()
//}
