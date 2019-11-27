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
    let selected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Text(label)
                .fontWeight(.semibold)
                .tracking(4)
                .font(Font.karla(30))
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.spentWhite())
        .background(LinearGradient(gradient: selected ? pinkGradient : purpleGradient, startPoint: .leading, endPoint: .trailing))
        .cornerRadius(4)
        .padding(.horizontal, 20)
    }
    let purpleGradient = Gradient(colors: [Color.spentPurple(), Color(red: 150 / 255, green: 173 / 255, blue: 250 / 255)])
    let pinkGradient = Gradient(colors: [Color.spentPink(), Color(red: 255 / 255, green: 214 / 255, blue: 250 / 255)])
}

#if DEBUG
struct Button_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomButton(label: "Test", isOn: true, selected: false, action: {
                
            }).padding([.vertical], 10)
            CustomButton(label: "Test", isOn: true, selected: true, action: {
                
            }).padding([.vertical], 10)
        }
    }
}
#endif
