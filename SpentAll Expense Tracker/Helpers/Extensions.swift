//
//  Extensions.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

extension Color {
    static func spentDarkPurple(a: Double = 1) -> Color {
        return Color(red: 102 / 255, green: 114 / 255, blue: 228 / 255, opacity: a)
    }
    static func spentPurple(a: Double = 1) -> Color {
        return Color(red: 129 / 255, green: 158 / 255, blue: 252 / 255, opacity: a)
    }
    static func spentPink(a: Double = 1) -> Color {
        return Color(red: 255 / 255, green: 185 / 255, blue: 246 / 255, opacity: a)
    }
    static func spentBlue(a: Double = 1) -> Color {
        return Color(red: 196 / 255, green: 240 / 255, blue: 255 / 255, opacity: a)
    }
    static func spentWhite(a: Double = 1) -> Color {
        return Color(red: 247 / 255, green: 249 / 255, blue: 252 / 255, opacity: a)
    }
}

extension UIColor {
    static func spentDarkPurple(a: CGFloat = 1) -> UIColor {
        return UIColor(red: 102 / 255, green: 114 / 255, blue: 228 / 255, alpha: a)
    }
    static func spentPurple(a: CGFloat = 1) -> UIColor {
        return UIColor(red: 129 / 255, green: 158 / 255, blue: 252 / 255, alpha: a)
    }
    static func spentPink(a: CGFloat = 1) -> UIColor {
        return UIColor(red: 255 / 255, green: 185 / 255, blue: 246 / 255, alpha: a)
    }
    static func spentBlue(a: CGFloat = 1) -> UIColor {
        return UIColor(red: 196 / 255, green: 240 / 255, blue: 255 / 255, alpha: a)
    }
    static func spentWhite(a: CGFloat = 1) -> UIColor {
        return UIColor(red: 247 / 255, green: 249 / 255, blue: 252 / 255, alpha: a)
    }
}
