//
//  SettingsView.swift
//  taskman
//
//  Created by yury mid on 04.07.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            Text("Settings")
                .foregroundColor(.white)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
