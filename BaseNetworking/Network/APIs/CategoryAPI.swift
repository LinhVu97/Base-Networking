//
//  CategoryAPI.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import Foundation
import Alamofire

struct CategoryAPI: APIEndpoint {
    var method: HTTPMethod {
        return .get
    }
    
    var params: Parameters {
        return [:]
    }
    
    var path: String {
        return "json/v1/1/list.php?c=list"
    }
    
}
