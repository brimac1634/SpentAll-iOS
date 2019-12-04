//
//  SpentAllEndPoint.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 3/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

enum NetworkEnvironment {
    case development
    case production
//    case staging
}

public enum SpentAllApi {
    case login(email: String, password: String)
    case register(name: String, email: String)
    case checkUser
}

extension SpentAllApi: EndPointType {
    
    
    
    var environmentBaseURL : String {
        switch NetworkManager.environment {
        case .production: return "https://spentall-server.herokuapp.com/"
        case .development: return "http://localhost:5000/"
//        case .staging: return ""
        }
    }
    
    var baseURL: URL {
        guard let url = URL(string: environmentBaseURL) else { fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
        case .login:
            return "login"
        case .register:
            return "register"
        case .checkUser:
            return "check-user"
        }
    }
    
    var httpMethod: HTTPMethod {
        switch self {
        case .login:
            return .post
        case .register:
            return .post
        case .checkUser:
            return .get
        }
    }
    
    var task: HTTPTask {
        switch self {
        case .login(let email, let password):
            return .requestParameters(bodyParameters: ["email": email, "password": password], urlParameters: nil)
        case .register(let name, let email):
            return .requestParameters(bodyParameters: ["name": name, "email": email], urlParameters: nil)
//        case .checkUser:
//            return .requestParametersAndHeaders(bodyParameters: nil, urlParameters: nil, additionalHeaders: ["x-access-token": "Bearer \(token)"])
//        case .newMovies(let page):
//            return .requestParameters(bodyParameters: nil,
//                                      urlParameters: ["page":page,
//                                                      "api_key":NetworkManager.MovieAPIKey])
        default:
            return .request
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}
