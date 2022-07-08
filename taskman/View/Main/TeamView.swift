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
            VStack{
                MainHeader(PageText: "Team.")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                
                Spacer()
                FilterTab(location: "team", selected: "team")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.bottom, 15)
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
