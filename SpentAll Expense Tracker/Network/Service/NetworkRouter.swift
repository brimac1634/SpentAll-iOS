//
//  NetworkRouter.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 3/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

public typealias NetworkRouterCompletion = (_ data: Data?,_ response: URLResponse?,_ error: Error?)->()

protocol NetworkRouter: class {
    associatedtype EndPoint: EndPointType
    func request(_ route: EndPoint, completion: @escaping NetworkRouterCompletion)
    func cancel()
}
