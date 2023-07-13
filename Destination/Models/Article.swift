//
//  Article.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 12/07/2023.
//

import Foundation

struct Article: Hashable, Codable{
    var icon: String
    var id: Int
    var title: String
    var description: String
}
