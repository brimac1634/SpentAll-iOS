//
//  SpentAllClient.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

class SpentAllClient: GenericAPIClient {
    internal let session: URLSession
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    convenience init() {
        self.init(configuration: .default)
    }
    
    struct loginParameter: Encodable {
        let email: String
        let password: String
    }
    
    func login(email: String, password: String, completion: @escaping (Result<UserSettings?, APIError>) -> ()) {
        let parameter = loginParameter(email: email, password: password)
        guard let request = SpentAllEndpoint.login.postRequest(parameters: parameter,
                                                         headers: [HTTPHeader.contentType("application/json")]) else { return }
        fetch(with: request , decode: { json -> UserSettings? in
            guard let results = json as? UserSettings else { return  nil }
            return results
        }, completion: completion)
    }
    
    func checkUser(completion: @escaping (Result<UserSettings?, APIError>) -> ()) {
        guard let request = SpentAllEndpoint.checkUser.getRequest(headers: [HTTPHeader.contentType("application/json")]) else { return }
        fetch(with: request, decode: { json -> UserSettings? in
            guard let results = json as? UserSettings else { return  nil }
            return results
        }, completion: completion)
    }
}
