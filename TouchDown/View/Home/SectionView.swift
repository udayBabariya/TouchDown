//
//  SectionView.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import SwiftUI

struct SectionView: View {
    //MARK: - Properties
    @State var rotateClockWise: Bool
    
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()
        } //: VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//#Preview {
//    SectionView()
//}
