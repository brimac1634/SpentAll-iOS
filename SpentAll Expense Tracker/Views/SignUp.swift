//
//  SignUp.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 28/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct SignUp: View {
    let isReset: Bool
    
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(verbatim: isReset ? "Reset" : "Sign Up")
                    .foregroundColor(Color.spentPink())
                    .font(Font.rubik(36))
                    .kerning(4)
                Spacer()
                if !isReset {
                    CustomInput(placeholder: "Name", hideText: false)
                    .padding(.vertical, CGFloat(10))
                }
                CustomInput(placeholder: "Email", hideText: true)
                    .padding(.vertical, CGFloat(10))
                CustomButton(label: isReset ? "Reset" : "Sign Up", isOn: false, color: Color.spentPink()) {
                    
                }.padding(.vertical, CGFloat(10))
                if !isReset {
                    Text(verbatim: "OR")
                        .font(Font.karla(20))
                        .kerning(2)
                        .foregroundColor(Color.spentWhite())
                    
                    CustomButton(label: "Sign Up with Facebook", isOn: true, color: Color.spentWhite()) {
                        
                    }.padding(.vertical, CGFloat(10))
                }
                Spacer()
                NavigationLink(destination: ContactUs()) {
                    Text(verbatim: "contact us")
                    .kerning(2)
                    .underline(true, color: Color.spentWhite())
                    .foregroundColor(Color.spentWhite())
                }
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(isReset: false)
    }
}
