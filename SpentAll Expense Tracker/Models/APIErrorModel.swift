//
//  APIErrorModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 4/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

struct APIError {
    var name: String
    var title: String
    var message: String
}

extension APIError: Decodable {
    private enum APIErrorCodingKeys: CodingKey {
        case name, title, message
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: APIErrorCodingKeys.self)

        name = try container.decode(String.self, forKey: .name)
        title = try container.decode(String.self, forKey: .title)
        message = try container.decode(String.self, forKey: .message)
    }
}
