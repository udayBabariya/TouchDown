//
//  TitleView.swift
//  TouchDown
//
//  Created by Uday on 03/11/23.
//

import SwiftUI

struct TitleView: View {
    //MARK: - Properties
    var title: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
      
    }
}

//#Preview {
//    TitleView()
//}