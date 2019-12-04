//
//  Expense.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct Expense {
    var id: Int
//    var user_id: Int
    var currency: String
    var type: String
    var notes: String
    var amount: Float
    var timestamp: Date
    var error: APIError?
}

extension Expense: Decodable {
    private enum ExpenseCodingKeys: CodingKey {
        case id, currency, type, notes, amount, timestamp, error
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ExpenseCodingKeys.self)

        id = try container.decode(Int.self, forKey: .id)
        currency = try container.decode(String.self, forKey: .currency)
        type = try container.decode(String.self, forKey: .type)
        notes = try container.decode(String.self, forKey: .notes)
        amount = try container.decode(Float.self, forKey: .amount)
        timestamp = try container.decode(Date.self, forKey: .timestamp)
        
        error = try container.decodeIfPresent(APIError.self, forKey: .error) ?? nil
    }
}
