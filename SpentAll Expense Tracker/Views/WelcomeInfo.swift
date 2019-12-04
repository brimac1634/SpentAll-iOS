//
//  WelcomeInfo.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 2/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct WelcomeInfo: View {
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    Text(verbatim: "What is SpentAll?")
                        .kerning(4)
                        .padding()
                        .foregroundColor(Color.spentPink())
                        .font(Font.rubik(36))
                    Text(verbatim: "SpentAll is a simple-to-use spending tracker. Log your expenditures, categorize them, and track your spending habits. Customize your account by selecting your local currency, setting spending limits, and personalizing spending categories. Keep an eye on the spending guage on the home dashboard to help you stay conscious of your spending! Make use of the analytics page to see more detailed metrics into where your money goes, and when. This app is perfect for those simply looking to keep an eye on their expenditures. More functionalities coming soon!")
                        .kerning(2)
                        .padding()
                        .foregroundColor(Color.spentWhite())
                        .font(Font.karla(28))
                }
                Spacer()
            }
            
        }
    }
}

struct WelcomeInfo_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeInfo()
    }
}
