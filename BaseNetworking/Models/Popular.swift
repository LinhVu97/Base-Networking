//
//  Popular.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import Foundation

struct Popular: Decodable {
    var drinks: PopularDetail
}

struct PopularDetail: Decodable {
    var idDrink: String
    var strDrink: String
    var strDescription: String
}
