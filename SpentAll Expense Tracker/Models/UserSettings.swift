//
//  UserSettings.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

enum CodingKeys: CodingKey {
    case userID, userName, userEmail, target, cycle, currency, categories
}

class UserSettings: Decodable {
    var userID: Int = 0
    var userName: String = ""
    var userEmail: String = ""
    var target: Int = 0
    var cycle: String = "monthly"
    var currency: String = "HKD"
    var categories: String = "food, housing, transportation, travel, entertainment, clothing, groceries, utilities, health, education, work"
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        userID = try container.decode(Int.self, forKey: .userID)
        userName = try container.decode(String.self, forKey: .userName)
        userEmail = try container.decode(String.self, forKey: .userEmail)
        target = try container.decode(Int.self, forKey: .target)
        cycle = try container.decode(String.self, forKey: .cycle)
        currency = try container.decode(String.self, forKey: .currency)
        categories = try container.decode(String.self, forKey: .categories)
    }
    
    //    func encode(to encoder: Encoder) throws {
    //        var container = encoder.container(keyedBy: CodingKeys.self)
    //
    //        try container.encode(type, forKey: .type)
    //        try container.encode(quantity, forKey: .quantity)
    //
    //        try container.encode(extraFrosting, forKey: .extraFrosting)
    //        try container.encode(addSprinkles, forKey: .addSprinkles)
    //
    //        try container.encode(name, forKey: .name)
    //        try container.encode(streetAddress, forKey: .streetAddress)
    //        try container.encode(city, forKey: .city)
    //        try container.encode(zip, forKey: .zip)
    //    }
}
