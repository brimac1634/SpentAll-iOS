//
//  ExpensesViewModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI
import Combine

final class ExpensesViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var isLoggedIn: Bool = false
//    @Published var alert: CustomAlert?
    @Published var hasError: Bool = false
    @Published var expensesResponse: ExpenseResponse?
    
    let networkManager = NetworkManager()
    

}
