//
//  Button.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 26/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//


import SwiftUI

struct CustomButton: View {
    let label: String
    let isOn: Bool
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(label)
                .fontWeight(.semibold)
                .kerning(2)
                .font(Font.rubik(24))
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(color == .spentWhite() ? .spentDarkPurple() : .spentWhite())
        .background(color)
        .cornerRadius(4)
        .padding(.horizontal, 20)
    }
}

#if DEBUG
struct Button_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomButton(label: "Login", isOn: true, color: Color.spentPink(), action: {
                
            }).padding([.vertical], 10)
            CustomButton(label: "Test", isOn: true, color: Color.spentPurple(), action: {
                
            }).padding([.vertical], 10)
        }
    }
}
#endif
