//
//  SubmitButton.swift
//  taskman
//
//  Created by yury mid on 03.07.2022.
//

import SwiftUI

struct SubmitButton: View {
    @State var btnText: String = "submit"
    @State var btnIcon: String = ""
//    @State var btnAction: Any
    
    
    
    var body: some View {
        Button {
            print("button was tapped")
        } label: {
            Label(btnText, systemImage: btnIcon)
        }
        .buttonStyle(RoundedRectangleButtonStyle())
        
        
        
        
    }
}

struct RoundedRectangleButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    HStack {
      Spacer()
      configuration.label.foregroundColor(.white)
      Spacer()
    }
    .padding(.top, 13)
    .padding(.bottom, 13)
    .background(Color.init(hex:"FBC42C").cornerRadius(10))
    .scaleEffect(configuration.isPressed ? 0.95 : 1)
    .shadow(radius: 10)
    .font(.system(size: 15, weight: .regular, design: .default))
  }
}

struct SubmitButton_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SubmitButton()
        }
        .previewLayout(.fixed(width: 300, height: 70))
            
    }
    
}
