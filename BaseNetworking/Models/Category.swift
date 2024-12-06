//
//  Category.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import Foundation

struct Category: Decodable {
    var strCategory: String
}

struct CateogryResult: Decodable {
    var drinks: [Category]
}
