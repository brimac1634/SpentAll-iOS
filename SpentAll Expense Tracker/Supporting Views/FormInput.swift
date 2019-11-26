//
//  FormInput.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct FormInput: View {
    @State var text: String = ""
    var body: some View {
        
        TextField("some text", text: $text)
            .border(Color.black)
            
        
    }
}

struct FormInput_Previews: PreviewProvider {
    static var previews: some View {
        FormInput()
    }
}
