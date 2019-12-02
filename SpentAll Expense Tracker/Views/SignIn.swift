//
//  SignIn.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct SignIn: View {
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(verbatim: "Login")
                    .foregroundColor(Color.spentPink())
                    .font(Font.rubik(36))
                    .kerning(4)
                Spacer()
                CustomInput(placeholder: "Email", hideText: false)
                    .padding(.vertical, CGFloat(10))
                CustomInput(placeholder: "Password", hideText: true)
                    .padding(.vertical, CGFloat(10))
                CustomButton(label: "Login", isOn: true, color: Color.spentPink()) {
                    
                }.padding(.vertical, CGFloat(10))
                Text(verbatim: "OR")
                    .font(Font.karla(20))
                    .kerning(2)
                    .foregroundColor(Color.spentWhite())
                
                CustomButton(label: "Login with Facebook", isOn: true, color: Color.spentWhite()) {
                    
                }.padding(.vertical, CGFloat(10))
                Spacer()
                NavigationLink(destination: SignUp(isReset: true)) {
                    Text(verbatim: "forgot password?")
                    .kerning(2)
                    .underline(true, color: Color.spentWhite())
                    .foregroundColor(Color.spentWhite())
                }
            }
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
