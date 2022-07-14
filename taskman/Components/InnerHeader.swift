//
//  InnerHeader.swift
//  taskman
//
//  Created by yury mid on 14.07.2022.
//

import SwiftUI

struct InnerHeader: View {
    @State var prevItem: String = "back"
    @State var currentTitle: String = "Page"
    var body: some View {
        ZStack{
            Color.init(hex: "494848")
            .cornerRadius(50)
            .frame(height: 65)
            .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)

            HStack {
                HStack{
                    Label("", systemImage: "chevron.left")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .regular, design: .default))
                        .padding(.trailing, -13)
                    Button(prevItem) {
                        print(prevItem)
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 16, weight: .regular, design: .default))
                    .buttonStyle(ShadowButtonStyle())
//                    Text(prevItem)
//                        .foregroundColor(.white)
//                        .font(.system(size: 16, weight: .regular, design: .default))
                }
                Spacer()
                ZStack{
                    Text(currentTitle)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .semibold, design: .default))
                        
                }
                
            }.padding(.leading, 25)
            .padding(.trailing, 25)
                
        }
    }
}

struct InnerHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            InnerHeader()
        }
        .previewLayout(.fixed(width: 350, height:100))
    }
}
