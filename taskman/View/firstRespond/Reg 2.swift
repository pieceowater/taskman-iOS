//
//  Reg.swift
//  taskman
//
//  Created by yury mid on 03.07.2022.
//

import SwiftUI

struct Reg: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                Logo()
                
                HStack{
                    Spacer()
                    LabeledInput(LText: "Your Login   ", TFPlaceholder: "Enter your login")
                    Spacer()
                }
                .padding(.top, 25)
                .padding(.leading,20)
                .padding(.trailing,20)
                HStack{
                    Spacer()
                    LabeledPasswordInput(LText: "Password     ", TFPlaceholder: "Enter your password")
                    Spacer()
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                
                HStack{
                    Spacer()
                    LabeledPasswordInput(LText: "Password x2", TFPlaceholder: "Re-enter your password")
                    Spacer()
                }
                .padding(.leading,20)
                .padding(.trailing,20)
                .padding(.bottom, 25)
                
                
                HStack {
                    Spacer()
                    SubmitButton(btnText: "Sign up")
                        .padding()
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Label("Already registered?", systemImage: "")
                        .foregroundColor(Color.init(hex:"ccc"))
                        .font(.system(size: 15, weight: .regular, design: .default))
                    
                    Button("Log in") {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 15, weight: .regular, design: .default))
                    .buttonStyle(ShadowButtonStyle())
                    Spacer()
                }
                Spacer()
                Spacer()
            }
            
            
            
            
            
            }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct Reg_Previews: PreviewProvider {
    static var previews: some View {
        Reg()
    }
}
