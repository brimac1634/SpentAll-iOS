//
//  EnvironmentData.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI
import Combine

final class EnvironmentData: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var isLoggedIn: Bool = false
    @Published var alert: CustomAlert?
    @Published var userSettings: UserSettings?
    @Published var expenses: [Expense]?
}

//    @Published var userName: String = ""
//    @Published var userEmail: String = ""
//    @Published var target: Int = 0
//    @Published var cycle: String = "monthly"
//    @Published var currency: String = "HKD"
//    @Published var categories: [String] = ["food", "housing", "transportation", "travel", "entertainment", "clothing"]
