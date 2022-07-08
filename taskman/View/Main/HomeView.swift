//
//  HomeView.swift
//  taskman
//
//  Created by yury mid on 04.07.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            VStack{
                MainHeader()
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
             
                Spacer()
                
                FilterTab(location: "tasklist", selected: "all")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.bottom, 15)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
