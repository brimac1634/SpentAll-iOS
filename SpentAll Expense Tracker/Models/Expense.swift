//
//  Expense.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct Expense: Hashable, Codable, Identifiable {
    var id: Int
    var user_id: Int
    var currency: String
    var type: String
    var notes: String
    var amount: Float
    var timestamp: Date
}
