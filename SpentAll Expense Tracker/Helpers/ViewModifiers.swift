//
//  ViewModifiers.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 29/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct Karla: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.karla())
    }
}

struct SpentShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color(red: 103 / 255, green: 114 / 255, blue: 229 / 255, opacity: 0.4), radius: 20, y: 5)
    }
}

struct SpentTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(Font.rubik(25))
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.spentWhite())
        .background(Color.spentPurple())
        .cornerRadius(4)
        .padding(.horizontal, 20)
        .spentShadow()
    }
}
