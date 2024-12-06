//
//  APIEndpoint.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import Foundation
import Alamofire

protocol APIEndpoint {
    var baseURL: String { get }
    var headers: HTTPHeaders { get }
    var encoding: ParameterEncoding { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var params: Parameters { get }
}

extension APIEndpoint {
    var baseURL: String {
        return "https://www.thecocktaildb.com/api/"
    }
    
    var headers: HTTPHeaders {
        return ["Content-Type": "application/json"]
    }
    
    var encoding: ParameterEncoding {
        return method == .get ? URLEncoding.default : JSONEncoding.default
    }
}
