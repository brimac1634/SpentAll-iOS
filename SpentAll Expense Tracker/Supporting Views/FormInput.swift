//
//  FormInput.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct FormInput: View {
    let placeholder: String
    let hideText: Bool
    @State var textInput: String = ""
    
    var body: some View {
        HStack {
            if hideText {
                SecureField(placeholder, text: $textInput)
            } else {
                TextField(placeholder, text: $textInput)
            }
            
        }
        .background(Color.spentPurple())
        .cornerRadius(4)
        .frame(minWidth: 0, maxWidth: .infinity)
        .foregroundColor(.spentWhite())
        .padding(.horizontal)
        .shadow(color: Color(red: 103 / 255, green: 114 / 255, blue: 229 / 255, opacity: 0.4), radius: 20, y: 5)
    }
}

#if DEBUG
struct FormInput_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            FormInput(placeholder: "Something", hideText: false)
            FormInput(placeholder: "Something", hideText: true)
        }
    }
}
#endif
