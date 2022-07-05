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
            Text("Home")
                .foregroundColor(.white)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
