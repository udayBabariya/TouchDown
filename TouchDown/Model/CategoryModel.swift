//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Uday on 02/11/23.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
