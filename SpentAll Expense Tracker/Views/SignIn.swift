//
//  SignIn.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 27/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct SignIn: View {
    @EnvironmentObject var environmentData: EnvironmentData
    @State var email: String = ""
    @State var password: String = ""
    
    var networkManager: NetworkManager
    
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(verbatim: "Login")
                    .font(Font.rubik(36))
                    .kerning(4)
                    .foregroundColor(Color.spentPink())
                Spacer()
                CustomInput(placeholder: "Email", hideText: false, textInput: $email)
                    .padding(.vertical, CGFloat(10))
                CustomInput(placeholder: "Password", hideText: true, textInput: $password)
                    .padding(.vertical, CGFloat(10))
                CustomButton(label: "Login", isOn: true, color: Color.spentPink()) {
                    self.login(self.email, self.password)
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
                Spacer()
            }
        }
    }
    
    func login(_ email: String, _ password: String) {
        networkManager.login(email: email, password: password) { (userSettings, error) in
            if let error = error {
                print(error)
            }
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn(networkManager: NetworkManager())
    }
}
