//
//  ContentView.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 13/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var environmentViewModel: EnvironmentViewModel
    
    var body: some View {
        Group {
            if environmentViewModel.userViewModel.isLoggedIn {
                TabBarView()
            } else {
                Welcome()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(EnvironmentViewModel())
    }
}


//                .onAppear(perform: self.checkAuthentication)
