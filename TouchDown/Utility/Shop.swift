//
//  Shop.swift
//  TouchDown
//
//  Created by Uday on 17/11/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
