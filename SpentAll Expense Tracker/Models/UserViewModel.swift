//
//  UserViewModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 11/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI
import Combine

class UserViewModel {
    var isLoading = false
    var isLoggedIn = false
    var hasError = false
    var userSettingsResponse: UserSettingsResponse?
    
    let networkManager = NetworkManager()
    
    
    func handleLogin(email: String, password: String) {
        self.isLoading = true
        networkManager.login(email: email, password: password) { (userSettingsResponse, error) in
            DispatchQueue.main.async {
                if let response = userSettingsResponse {
                    self.isLoggedIn = response.success ?? false
                    self.userSettingsResponse = response
                    if (response.error != nil) {
                        self.hasError = true
                    }
                }
                self.isLoading = false
            }
        
        }
    }
}

//    @Published var userName: String = ""
//    @Published var userEmail: String = ""
//    @Published var target: Int = 0
//    @Published var cycle: String = "monthly"
//    @Published var currency: String = "HKD"
//    @Published var categories: [String] = ["food", "housing", "transportation", "travel", "entertainment", "clothing"]
