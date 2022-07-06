//
//  NotificationsView.swift
//  taskman
//
//  Created by yury mid on 05.07.2022.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            VStack{
                MainHeader(PageText: "Notification.")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                Spacer()
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
