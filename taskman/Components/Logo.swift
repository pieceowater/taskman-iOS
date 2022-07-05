//
//  Logo.swift
//  taskman
//
//  Created by yury mid on 03.07.2022.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        VStack {
            Image("taskmanicon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(10)
                .padding(1)
                .shadow(radius: 15)
            
            Label("Taskman.", systemImage: "")
                .foregroundColor(Color.init(hex: "CCCCCC"))
                .font(.system(size: 25, weight: .light, design: .default))
                .padding(10)
        }
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Logo()
        }
        .previewLayout(.fixed(width: 300, height: 300))
    }
}
