//
//  TeamView.swift
//  taskman
//
//  Created by yury mid on 04.07.2022.
//

import SwiftUI

struct TeamView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            Text("Team")
                .foregroundColor(.white)
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
