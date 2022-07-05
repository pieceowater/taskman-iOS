//
//  MainView.swift
//  taskman
//
//  Created by yury mid on 04.07.2022.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab = 0
    init() {
        UITabBar.appearance().backgroundColor = UIColor(rgb: 0x333333)
    }
    var body: some View {
        VStack {
            TabView(selection: $selectedTab) {
                    HomeView()
                        .tabItem {
                            Image("house")
                        }.tag(0)
                    
                    TeamView()
                        .tabItem {
                            Image("team")
                        }.tag(1)
                    
                    SettingsView()
                        .tabItem {
                            Image("gear")
                        }.tag(2)
                    
                    ExitView()
                        .tabItem {
                            Image("exit")
                        }.tag(3)
            }
            .accentColor(.white)
            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
            
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
