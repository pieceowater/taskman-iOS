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
                            Label("", systemImage: "house")
                        }.tag(0)
                    
                    TeamView()
                        .tabItem {
                            Label("", systemImage: "person")
                        }.tag(1)
                    
                NotificationsView()
                        .tabItem {
                            Label("", systemImage: "bell")
                        }.tag(2)
                    
                    SettingsView()
                        .tabItem {
                            Label("", systemImage: "gear")
                            
                        }.tag(3)
                    
            }.accentColor(Color.init(hex: "FBC42C"))
            .edgesIgnoringSafeArea(.all)
        }
        .edgesIgnoringSafeArea(.all)
            
    }
}

extension UIView {
        
        func allSubviews() -> [UIView] {
            var res = self.subviews
            for subview in self.subviews {
                let riz = subview.allSubviews()
                res.append(contentsOf: riz)
            }
            return res
        }
    }
    
    struct Tool {
        static func showTabBar() {
            UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
                if let view = v as? UITabBar {
                    view.isHidden = false
                }
            })
        }
        
        static func hiddenTabBar() {
            UIApplication.shared.windows.first(where: { $0.isKeyWindow })?.allSubviews().forEach({ (v) in
                if let view = v as? UITabBar {
                    view.isHidden = true
                }
            })
        }
    }
    
    struct ShowTabBar: ViewModifier {
        func body(content: Content) -> some View {
            return content.padding(.zero).onAppear {
                Tool.showTabBar()
            }
        }
    }
    struct HiddenTabBar: ViewModifier {
        func body(content: Content) -> some View {
            return content.padding(.zero).onAppear {
                Tool.hiddenTabBar()
            }
        }
    }
    
    extension View {
        func showTabBar() -> some View {
            return self.modifier(ShowTabBar())
        }
        func hiddenTabBar() -> some View {
            return self.modifier(HiddenTabBar())
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
