//
//  APIEndpoint.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base:  String { get }
    var path: String { get }
}
extension Endpoint {
    var urlComponents: URLComponents? {
        guard var components = URLComponents(string: base) else { return nil }
        components.path = path
        return components
    }
    var request: URLRequest? {
        guard let url = urlComponents?.url ?? URL(string: "\(self.base)\(self.path)") else { return nil }
        let request = URLRequest(url: url)
        return request
    }
    
    func appendHeaders(_ headers: [HTTPHeader], _ request: inout URLRequest) -> URLRequest {
        headers.forEach { request.addValue($0.header.value, forHTTPHeaderField: $0.header.field) }
        return request
    }
    
    func getRequest(headers: [HTTPHeader]) -> URLRequest? {
        guard var request = self.request else { return nil }
        request.httpMethod = HTTPMethod.get.rawValue
        request = appendHeaders(headers, &request)
        return request
    }
    
    func postRequest<T: Encodable>(parameters: T, headers: [HTTPHeader]) -> URLRequest? {
        guard var request = self.request else { return nil }
        request.httpMethod = HTTPMethod.post.rawValue
        do {
            request.httpBody = try JSONEncoder().encode(parameters)
        } catch let error {
            print(APIError.postParametersEncodingFalure(description: "\(error)").customDescription)
            return nil
        }
        request = appendHeaders(headers, &request)
        return request
    }
}
