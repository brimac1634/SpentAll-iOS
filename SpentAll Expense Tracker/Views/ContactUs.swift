//
//  ContactUs.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 29/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct ContactUs: View {
    @State var test = ""
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text(verbatim: "Contact Us")
                    .foregroundColor(Color.spentPink())
                    .font(Font.rubik(36))
                    .kerning(4)
                Spacer()
                CustomInput(placeholder: "Full Name", hideText: false)
                    .padding(.vertical, CGFloat(10))
                CustomInput(placeholder: "Email", hideText: true)
                    .padding(.vertical, CGFloat(10))
                CustomInput(placeholder: "Subject", hideText: true)
                    .padding(.vertical, CGFloat(10))
                CustomInput(placeholder: "Message", hideText: true)
                    .lineLimit(nil)
                    .padding(.vertical, CGFloat(10))
                //                    .frame(width: .infinity, height: 80)
                
                CustomButton(label: "Submit", isOn: false, color: Color.spentPink()) {
                    
                }.padding(.vertical, CGFloat(10))
                Spacer()
            }
        }
    }
}

struct ContactUs_Previews: PreviewProvider {
    static var previews: some View {
        ContactUs()
    }
}
