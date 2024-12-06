//
//  APIPopular.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import Foundation
import Alamofire

struct PopularAPI: APIEndpoint {
    var method: HTTPMethod {
        return .get
    }
    
    var params: Parameters {
        return [:]
    }
    
    var path: String {
        return "json/v1/1/popular.php"
    }
}
