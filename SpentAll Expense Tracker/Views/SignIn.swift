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
    @State private var showAlert = false
    
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
                    self.environmentData.handleLogin(email: self.email, password: self.password)
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
                        .padding(.vertical, 20)
                }
            }
            if self.environmentData.isLoading {
                CustomLoader()
            }
        }
        .alert(isPresented: $environmentData.hasError) {
            Alert(title: Text(self.environmentData.userSettingsResponse?.error?.title ?? "Error"), message: Text(self.environmentData.userSettingsResponse?.error?.message ?? "Please try again later"), dismissButton: Alert.Button.default(Text("Okay")))
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
