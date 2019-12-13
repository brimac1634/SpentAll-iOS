//
//  ExpensesViewModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI
import Combine

class ExpensesViewModel {
    var isLoading: Bool = false
    var isLoggedIn: Bool = false
//    @Published var alert: CustomAlert?
    var hasError: Bool = false
    var expensesResponse: ExpenseResponse?
    
    let networkManager = NetworkManager()
    

}
