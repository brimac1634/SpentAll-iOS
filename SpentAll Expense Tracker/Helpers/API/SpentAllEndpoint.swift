//
//  SpentAllEndpoint.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

enum SpentAllEndpoint {
    case login
    case checkUser
}

extension SpentAllEndpoint: Endpoint {
    
    var base: String {
        return Constants.DEV_SERVER
    }
    
    var path: String {
        switch self {
        case .login: return "/login"
        case .checkUser: return "/check-user"
        }
    }
}
