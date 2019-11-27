//
//  APIRequest.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 26/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation


protocol GenericAPIClient {
    var session: URLSession { get }
    func fetch<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void)
}

extension GenericAPIClient {
    typealias JSONTaskCompletionHandler = (Decodable?, APIError?) -> Void
    private func decodingTask<T: Decodable>(with request: URLRequest, decodingType: T.Type, completionHandler completion: @escaping JSONTaskCompletionHandler) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, .requestFailed(description: error?.localizedDescription ?? "No description"))
                return
            }
            guard httpResponse.statusCode == 200  else {
                completion(nil, .responseUnsuccessful(description: "\(httpResponse.statusCode)"))
                return
            }
            guard let data = data else { completion(nil, .invalidData); return }
            do {
                let genericModel = try JSONDecoder().decode(decodingType, from: data)
                completion(genericModel, nil)
            } catch let err {
                completion(nil, .jsonConversionFailure(description: "\(err.localizedDescription)"))
            }
        }
        return task
    }
    /// success respone executed on main thread.
    func fetch<T: Decodable>(with request: URLRequest, decode: @escaping (Decodable) -> T?, completion: @escaping (Result<T, APIError>) -> Void) {
        let task = decodingTask(with: request, decodingType: T.self) { (json , error) in
            DispatchQueue.main.async {
                guard let json = json else {
                    error != nil ? completion(.failure(.decodingTaskFailure(description: "\(String(describing: error))"))) : completion(.failure(.invalidData))
                    return
                }
                guard let value = decode(json) else { completion(.failure(.jsonDecodingFailure)); return }
                completion(.success(value))
            }
        }
        task.resume()
    }
}


//enum APIError: Error {
//    case responseProblem
//    case decodingProblem
//    case encodingProblem
//}
//
//struct APIRequest {
//    let resourceURL: URL
//
//    let DEV_SERVER = "http://localhost:5000"
//    let PROD_SERVER = "https://spentall-server.herokuapp.com"
//
//    init(endpoint: String) {
////        let resourceString = "\(PROD_SERVER)\(endpoint)"
//        let resourceString = "\(DEV_SERVER)\(endpoint)"
//        guard let resourceURL = URL(string: resourceString) else { fatalError() }
//        self.resourceURL = resourceURL
//    }
//
//    func post(_ data: Data, completion: @escaping(Result<UserData, APIError>) -> Void) {
//        do {
//            var urlRequest = URLRequest(url: resourceURL)
//            urlRequest.httpMethod = "POST"
//            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
//            urlRequest.httpBody = data
////            = try JSONEncoder().encode(data)
//
//            let dataTask = URLSession.shared.dataTask(with: urlRequest) { data, response, erro in
//                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let jsonData = data else {
//                    completion(.failure(.responseProblem))
//                    return
//                }
//
//                do {
//                    let decodedData = try JSONDecoder().decode(data, from: jsonData)
//                    completion(.success(decodedData))
//                } catch {
//                    completion(.failure(.decodingProblem))
//                }
//            }
//            dataTask.resume()
//        } catch {
//            completion(.failure(.encodingProblem))
//        }
//    }
//
//    func get(completion: @escaping(Result<UserData, APIError>) -> Void) {
//        do {
//            var urlRequest = URLRequest(url: resourceURL)
//            urlRequest.httpMethod = "GET"
//        }
//    }
//}
