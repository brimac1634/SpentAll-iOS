//
//  AlertModel.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 4/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

struct CustomAlert {
    var title: String
    var message: String
    var leftLabel: String?
    var leftAction: ()->Void?
    var rightLabel: String?
    var rightAction: ()->Void?
    
    init(title: String, message: String, leftLabel: String, rightLabel: String, leftAction: @escaping ()->Void, rightAction: @escaping ()->Void) {
        self.title = title
        self.message = message
        self.leftLabel = leftLabel
        self.rightLabel = rightLabel
        self.leftAction = leftAction
        self.rightAction = rightAction
    }
}
