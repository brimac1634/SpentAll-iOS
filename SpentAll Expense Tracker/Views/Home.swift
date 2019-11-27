//
//  Home.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
            VStack {
                Spacer()
                Ring()
                Spacer()
                HStack {
                    Text("22%")
                        .foregroundColor(.spentPink())
                        .font(.system(size: 30))
                    Text("of your monthly limit")
                        .foregroundColor(.spentBlue())
                        .font(.system(size: 20))
                }
                Text("or")
                    .foregroundColor(.spentBlue())
                    .font(.system(size: 20))
                HStack {
                    Text("$1,500")
                        .foregroundColor(.spentPink())
                        .font(.system(size: 30))
                    Text("of your monthly limit")
                        .foregroundColor(.spentBlue())
                        .font(.system(size: 20))
                    Text("$8,000")
                        .foregroundColor(.spentPink())
                        .font(.system(size: 30))
                }
                Spacer()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
