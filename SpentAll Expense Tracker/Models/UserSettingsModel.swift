//
//  UserSettingsModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

struct UserSettingsResponse {
    var success: Bool?
    var message: String?
    var token: String?
    var user: UserSettings?
    var error: APIError?
}

extension UserSettingsResponse: Decodable {
    private enum UserSettingsResponseCodingKeys: CodingKey {
        case user, success, message, token, error
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UserSettingsResponseCodingKeys.self)

        user = try container.decodeIfPresent(UserSettings.self, forKey: .user) ?? nil
        success = try container.decodeIfPresent(Bool.self, forKey: .success) ?? nil
        message = try container.decodeIfPresent(String.self, forKey: .message) ?? nil
        token = try container.decodeIfPresent(String.self, forKey: .token) ?? nil
        error = try container.decodeIfPresent(APIError.self, forKey: .error) ?? nil
    }
}

struct UserSettings {
    var userName: String
    var userEmail: String
    var target: Int
    var cycle: String
    var currency: String
    var categories: [String]
}

extension UserSettings: Decodable {
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
        let categoriesString = try container.decode(String.self, forKey: .categories)
        categories = categoriesString.components(separatedBy: ",")
    }
}

struct User {
     var userName: String
     var userEmail: String
}

extension User: Decodable {
    private enum UserCodingKeys: CodingKey {
        case userName, userEmail
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: UserCodingKeys.self)

        userName = try container.decode(String.self, forKey: .userName)
        userEmail = try container.decode(String.self, forKey: .userEmail)
    }
}
