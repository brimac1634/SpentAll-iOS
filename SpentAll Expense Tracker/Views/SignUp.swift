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
    @EnvironmentObject var environmentViewModel: EnvironmentViewModel
    @State var name = ""
    @State var email = ""
    
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
                    CustomInput(placeholder: "Name", hideText: false, textInput: $name)
                    .padding(.vertical, CGFloat(10))
                }
                CustomInput(placeholder: "Email", hideText: true, textInput: $email)
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
                Spacer()
            }
            .alert(isPresented: $environmentViewModel.userViewModel.hasError) {
                Alert(title: Text(self.environmentViewModel.userViewModel.userSettingsResponse?.error?.title ?? "Error"), message: Text(self.environmentViewModel.userViewModel.userSettingsResponse?.error?.message ?? "Please try again later"), dismissButton: Alert.Button.default(Text("Okay")))
            }
            if self.environmentViewModel.userViewModel.isLoading {
                CustomLoader()
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(isReset: false).environmentObject(EnvironmentViewModel())
    }
}
