//
//  Ring.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 26/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct Ring: View {
    @State var percent: Int = 0
    @State private var showRing = false
    
    static let colors = Gradient(colors: [.spentPink(), .spentBlue()])
    static let conic = AngularGradient(gradient: colors, center: .center, startAngle: .zero, endAngle: .degrees(360))
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: showRing ? 0.2 : 1, to: 1)
                .stroke(Ring.conic, style: StrokeStyle(lineWidth: 30, lineCap: .butt))
                .foregroundColor(Color.spentBlue())
                .frame(width: 300, height: 300)
                .rotationEffect(.degrees(90))
                .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                .shadow(color: Color(red: 103 / 255, green: 114 / 255, blue: 229 / 255, opacity: 0.4), radius: 20, y: 5)
                .animation(Animation.easeInOut(duration: 1))
                .onAppear() {
                    self.showRing.toggle()
            }
            Text("\(percent)%")
                .font(.system(size: 80))
                .foregroundColor(Color.spentPink())
        }
        
    }
}

struct Ring_Previews: PreviewProvider {
    static var previews: some View {
        Ring()
    }
}
