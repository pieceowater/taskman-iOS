//
//  SettingsView.swift
//  taskman
//
//  Created by yury mid on 04.07.2022.
//

import SwiftUI

struct SettingsView: View {
    @State var pushView = false
    
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            VStack{
                MainHeader(PageText: "Settings.")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                Spacer()
                VStack{
                    Spacer()
                    NavigationLink(destination: Reg()) {
                        VStack{
                            Image("dev")
                                .resizable()
                                .frame(width: 120, height: 75)
                                .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)
                            Text("Developers")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .regular, design: .default))
                        }
                    }
                    Spacer()
                    NavigationLink(destination: Auth()) {
                        VStack{
                            Image("exit")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)
                            Text("Log out")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .regular, design: .default))
                        }
                    }
                    
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
