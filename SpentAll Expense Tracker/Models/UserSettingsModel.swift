//
//  UserSettingsModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

struct UserSettingsResponse: Decodable {
    var user: UserSettings
    
    private enum UserSettingsResponseCodingKeys: CodingKey {
        case user
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UserSettingsResponseCodingKeys.self)

        user = try container.decode(UserSettings.self, forKey: .user)
    }
    
}

struct UserSettings: Decodable {
    var userName: String
    var userEmail: String
    var target: Int
    var cycle: String
    var currency: String
    var categories: String
    
    private enum UserSettingsCodingKeys: CodingKey {
        case userName, userEmail, target, cycle, currency, categories
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UserSettingsCodingKeys.self)

        userName = try container.decode(String.self, forKey: .userName)
        userEmail = try container.decode(String.self, forKey: .userEmail)
        target = try container.decode(Int.self, forKey: .target)
        cycle = try container.decode(String.self, forKey: .cycle)
        currency = try container.decode(String.self, forKey: .currency)
        categories = try container.decode(String.self, forKey: .categories)
    }
    
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

