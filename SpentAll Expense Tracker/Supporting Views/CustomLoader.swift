//
//  CustomLoader.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 5/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct LoaderCircle: View {
    var body: some View {
        Circle()
            .fill(Color.spentWhite())
            .frame(width: 15, height: 15)
            .spentShadow()
    }
}

struct CustomLoader: View {
    @State var scale: CGFloat = 0
    @State var scaleDown: CGFloat = 1
    @State var offset: CGFloat = 0
    
    var foreverAnimation: Animation {
        Animation.easeIn(duration: 0.6)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        ZStack {
            Color.spentDarkPurple(a: 0.3)
                .edgesIgnoringSafeArea(.all)
            HStack {
                ZStack {
                    LoaderCircle()
                        .scaleEffect(scale)
                        .animation(self.foreverAnimation)
                    LoaderCircle()
                    .offset(x: offset)
                    .animation(self.foreverAnimation)
                }
                LoaderCircle()
                .offset(x: offset)
                .animation(self.foreverAnimation)
                LoaderCircle()
                    .scaleEffect(scaleDown)
                    .animation(self.foreverAnimation)
            }
            .onAppear {
                self.scale = 1
                self.offset = 23
                self.scaleDown = 0
            }
        }
    }
}

struct CustomLoader_Previews: PreviewProvider {
    static var previews: some View {
        CustomLoader()
    }
}
