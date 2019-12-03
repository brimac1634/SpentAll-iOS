//
//  EndPointType.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 3/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
