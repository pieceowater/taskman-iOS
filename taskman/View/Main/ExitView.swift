//
//  ExitView.swift
//  taskman
//
//  Created by yury mid on 04.07.2022.
//

import SwiftUI

struct ExitView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            Text("Exit")
                .foregroundColor(.white)
        }
    }
}

struct ExitView_Previews: PreviewProvider {
    static var previews: some View {
        ExitView()
    }
}
