//
//  Name.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

enum NameKeys: CodingKey {
    case name
}

class Name: Codable {
    var name: String
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: NameKeys.self)

        name = try container.decode(String.self, forKey: .name)
    }
}
