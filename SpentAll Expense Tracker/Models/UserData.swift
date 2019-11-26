//
//  UserData.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

final class UserData: ObservableObject {
    @Published var userID: Int
    @Published var userName: String
    @Published var userEmail: String
    @Published var target: Int = 0
    @Published var cycle: String = "monthly"
    @Published var currency: String = "HKD"
    @Published var categories: [String] = ["food", "housing", "transportation", "travel", "entertainment", "clothing", "groceries", "utilities", "health", "education", "work"]
    
    init(id: Int, name: String, email: String) {
        self.userID = id
        self.userName = name
        self.userEmail = email
    }
}
