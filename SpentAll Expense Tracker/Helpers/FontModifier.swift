////
////  FontModifier.swift
////  SpentAll Expense Tracker
////
////  Created by Brian MacPherson on 27/11/2019.
////  Copyright © 2019 Brian MacPherson. All rights reserved.
////
//
//import SwiftUI
//
//enum CustomFont: String {
//    case karla = "Karla-Regular"
//    case rubik = "Rubik-Regular"
//}
//
//struct FontModifier: ViewModifier {
//    @Environment(\.sizeCategory) var sizeCategory
//    var textStyle: Font.TextStyle
//    var font: String
//
//    init(_ font: CustomFont, _ textStyle: Font.TextStyle = .body) {
//        self.textStyle = textStyle
//        self.font = font
//    }
//
//    func body(content: Content) -> some View {
//        content.font(getFont())
//    }
//
//    func getFont() -> Font {
//        switch(sizeCategory) {
//        case .extraSmall:
//            return Font.custom(font, size: 16 * getStyleFactor())
//        case .small:
//            return Font.custom(font, size: 21 * getStyleFactor())
//        case .medium:
//            return Font.custom(font, size: 24 * getStyleFactor())
//        case .large:
//            return Font.custom(font, size: 28 * getStyleFactor())
//        case .extraLarge:
//            return Font.custom(font, size: 32 * getStyleFactor())
//        case .extraExtraLarge:
//            return Font.custom(font, size: 36 * getStyleFactor())
//        case .extraExtraExtraLarge:
//            return Font.custom(font, size: 40 * getStyleFactor())
//        case .accessibilityMedium:
//            return Font.custom(font, size: 48 * getStyleFactor())
//        case .accessibilityLarge:
//            return Font.custom(font, size: 52 * getStyleFactor())
//        case .accessibilityExtraLarge:
//            return Font.custom(font, size: 60 * getStyleFactor())
//        case .accessibilityExtraExtraLarge:
//            return Font.custom(font, size: 66 * getStyleFactor())
//        case .accessibilityExtraExtraExtraLarge:
//            return Font.custom(font, size: 72 * getStyleFactor())
//        @unknown default:
//            return Font.custom(font, size: 36 * getStyleFactor())
//        }
//    }
//
//    func getStyleFactor() -> CGFloat {
//        switch textStyle {
//        case .caption:
//            return 0.6
//        case .footnote:
//            return 0.7
//        case .subheadline:
//            return 0.8
//        case .callout:
//            return 0.9
//        case .body:
//            return 1.0
//        case .headline:
//            return 1.2
//        case .title:
//            return 1.5
//        case .largeTitle:
//            return 2.0
//        @unknown default:
//            return 1.0
//        }
//    }
//
//}
