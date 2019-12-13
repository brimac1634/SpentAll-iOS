//
//  EnvironmentViewModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 13/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI
import Combine

class EnvironmentViewModel: ObservableObject {
    @Published var userViewModel: UserViewModel = UserViewModel()
    @Published var expenseViewModel: ExpensesViewModel = ExpensesViewModel()
}
