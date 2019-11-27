//
//  Button.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 26/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//


import SwiftUI

struct CustomButton: View {
    var label: String = "Hey There"
    
    var body: some View {
        Button(action: {
            print("Edit tapped!")
        }) {
            Text(label)
                .fontWeight(.semibold)
                .tracking(4)
                .font(Font.karla(30))
        }
        .buttonStyle(GradientBackgroundStyle())
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    
    let normalGradient = Gradient(colors: [Color.spentPurple(), Color(red: 150 / 255, green: 173 / 255, blue: 250 / 255)])
    let selectedGradient = Gradient(colors: [Color.spentPurple(), Color(red: 176 / 255, green: 192 / 255, blue: 245 / 255)])
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.spentWhite())
            .background(LinearGradient(gradient: configuration.isPressed ? selectedGradient : normalGradient, startPoint: .leading, endPoint: .trailing))
            .cornerRadius(4)
            .padding(.horizontal, 20)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton()
    }
}
