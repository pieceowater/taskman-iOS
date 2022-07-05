//
//  Auth.swift
//  taskman
//
//  Created by yury mid on 03.07.2022.
//

import SwiftUI

struct Auth: View {
    @State var pushView = false
    
    var body: some View {
        NavigationView {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                Logo()
                
                HStack{
                    Spacer()
                    LabeledInput(LText: "Your Login", TFPlaceholder: "Enter your login")
                    Spacer()
                }
                .padding(.top, 25)
                .padding(.leading,20)
                .padding(.trailing,20)
                HStack{
                    Spacer()
                    LabeledPasswordInput(LText: "Password  ", TFPlaceholder: "Enter your password")
                    Spacer()
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.bottom, 25)
                
                
                HStack {
                    Spacer()
                    SubmitButton(btnText: "Log in")
                        .padding()
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Label("Not registered?", systemImage: "")
                        .foregroundColor(Color.init(hex:"ccc"))
                        .font(.system(size: 15, weight: .regular, design: .default))
                    
                    
                    
                    
                        NavigationLink(destination: Reg()) {
                            Text("Sign up")
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular, design: .default))
                            .buttonStyle(ShadowButtonStyle())
                        }
                        
                    
                    
                    
            
                    Spacer()
                }
                Spacer()
                Spacer()
            }
            
            
            
            
            
            }
    }
}
}

struct Auth_Previews: PreviewProvider {
    static var previews: some View {
        Auth()
            .preferredColorScheme(.dark)
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct ShadowButtonStyle: ButtonStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .shadow(
        color: configuration.isPressed ? Color.init(hex: "FBC42C") : Color.init(hex: "6B6B6B"),
        radius: 2, x: 0, y: 3
      )
  }
}
