//
//  TabBarView.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 25/11/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selected = 0
    
    var body: some View {
        ZStack {
            Color.spentDarkPurple()
                .edgesIgnoringSafeArea(.all)
            TabView(selection: $selected) {
                Home().tabItem({
                    Image(Constants.TabBarImageName.tabBar0)
                        .renderingMode(.template)
                    Text("\(Constants.TabBarText.tabBar0)")
                    
                }).tag(0)
                
                Analytics().tabItem({
                    Image(Constants.TabBarImageName.tabBar1)
                        .renderingMode(.template)
                        .accentColor(Color.spentWhite())
                    Text("\(Constants.TabBarText.tabBar1)")
                }).tag(1)
                
                List().tabItem({
                    Image(Constants.TabBarImageName.tabBar2)
                        .renderingMode(.template)
                        .accentColor(Color.spentWhite())
                    Text("\(Constants.TabBarText.tabBar2)")
                }).tag(2)
                
                Settings().tabItem({
                    Image(Constants.TabBarImageName.tabBar3)
                        .renderingMode(.template)
                        .accentColor(Color.spentWhite())
                    Text("\(Constants.TabBarText.tabBar3)")
                }).tag(3)
            }.accentColor(Color.spentPink())
            
            
        }
        
    }
}

extension UITabBarController {
    override open func viewDidLoad() {
        let standardAppearance = UITabBarAppearance()
        standardAppearance.backgroundColor = UIColor.spentPurple()
    standardAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.spentWhite()]
        standardAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.spentWhite()
    standardAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.spentPink()]
        
        tabBar.standardAppearance = standardAppearance
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
