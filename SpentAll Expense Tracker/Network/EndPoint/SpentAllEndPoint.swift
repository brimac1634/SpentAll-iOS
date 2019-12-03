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
    case login
    case register
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
        return .get
    }
    
    var task: HTTPTask {
        switch self {
        case .newMovies(let page):
            return .requestParameters(bodyParameters: nil,
                                      urlParameters: ["page":page,
                                                      "api_key":NetworkManager.MovieAPIKey])
        default:
            return .request
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}
