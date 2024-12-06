//
//  NetworkingService.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import Foundation
import Alamofire

enum NetworkingError: Error {

}

class NetworkingService {
    static let shared = NetworkingService()
    
    private init() {}
    
    func request<T: Decodable>(_ endpoint: APIEndpoint,
                               responseType: T.Type,
                               completion: @escaping (Result<T, Error>) -> Void) {
        let url = "\(endpoint.baseURL)\(endpoint.path)"
        
        AF.request(url, method: endpoint.method,
                   parameters: endpoint.params,
                   encoding: endpoint.encoding,
                   headers: endpoint.headers)
            .validate(statusCode: 200..<300)
            .responseDecodable(of: T.self) { response in
            
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
        print(url)
        print(endpoint.headers)
        print(endpoint.params)
        print(endpoint.method)
    }
}
