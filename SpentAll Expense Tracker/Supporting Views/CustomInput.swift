//
//  CustomInput.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct CustomInput: View {
    let placeholder: String
    let hideText: Bool
    @State var textInput: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            if hideText {
                SecureField("", text: $textInput)
            } else {
                TextField("", text: $textInput)
            }
            if textInput.isEmpty {
               Text(placeholder)
                .foregroundColor(Color.spentDarkPurple())
            }
        }
        .spentTextFieldStyle()
    }
}

#if DEBUG
struct FormInput_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomInput(placeholder: "Something", hideText: false)
            CustomInput(placeholder: "Something", hideText: true)
        }
    }
}
#endif
