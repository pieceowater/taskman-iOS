//
//  MyProfileView.swift
//  taskman
//
//  Created by yury mid on 14.07.2022.
//

import SwiftUI

struct MyProfileView: View {
    @State var UserAvatar: String = "user-avatar"
    @State var UserName: String = "Username"
    @State var UserTag: String = "@username"
    @State var UserLogin: String = "userlogin"
    
    var body: some View {
        ZStack {
            Color.init(hex: "333333")
            .ignoresSafeArea()
            VStack{
                InnerHeader(prevItem: "List", currentTitle: "Profile Preferences")
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
             

                ScrollView {
                VStack{
                    ZStack{
                        Color.init(hex: "FBC42C")
                            .frame(width: 120, height: 120)
                            .cornerRadius(100)
                            .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)
                        if (UserAvatar != "user-avatar"){
                            Image(base64String: UserAvatar)?
                                .resizable()
                                .frame(width: 120, height: 120)
                                .cornerRadius(100)
                        }else{
                            Image("user-avatar")
                                .resizable()
                                .frame(width: 90, height: 90)
                                .cornerRadius(100)
                        }
                    }
                    .zIndex(2)
                    .padding(.bottom, -70)
                    
                    ZStack{
                        Color.init(hex: "494848")
                        .cornerRadius(21)
                        .frame(height: 210)
                        .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)
                        VStack{
                            
                            HStack{
                                Text(UserName)
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold, design: .default))
                                Spacer()
                                SubmitButton(btnText: "edit", btnIcon: "square.and.pencil")
                                    .frame(width: 80)

                            }.padding(.top, 75)
                                .padding(.leading, 30)
                                .padding(.trailing, 20)
                                
                            HStack{
                                Text("your tag is:")
                                    .foregroundColor(Color.init(hex: "cccccc"))
                                    .font(.system(size: 15, weight: .regular, design: .default))
                                Text(UserTag)
                                    .foregroundColor(Color.init(hex: "cccccc"))
                                    .font(.system(size: 16, weight: .semibold, design: .default))
                                Spacer()
                            }.padding(.leading, 30)
                                .padding(.trailing, 30)
                                .padding(.bottom, 3)
                            HStack{
                                Button("change avatar") {
                                    print("change avatar")
                                }
                                .foregroundColor(Color.init(hex: "FBC42C"))
                                .font(.system(size: 15, weight: .semibold, design: .default))
                                .buttonStyle(ShadowButtonStyle())
                                Spacer()
                            }.padding(.leading, 30)
                                .padding(.trailing, 30)
                            Spacer()
                        }.frame(height: 210)
                            
                    }.zIndex(1)
                }.padding()
                
                
                VStack{
                    LabeledInput(LText: "Login        ", TFText: UserLogin, TFPlaceholder: "enter new login")
                    LabeledPasswordInput(LText: "Password ", TFText: "*********", TFPlaceholder: "enter new password")
                    HStack{
                        Spacer()
                        Button("save") {
                            print("save")
                        }
                        .foregroundColor(Color.init(hex: "FBC42C"))
                        .font(.system(size: 16, weight: .semibold, design: .default))
                        .buttonStyle(ShadowButtonStyle())
                    }.padding(.top, 5)
                    RoundedRectangle(cornerRadius: 15)
                        .frame(height: 2)
                        .foregroundColor(Color.init(hex: "FBC42C"))
                        .padding(.top, 10)

                }.padding(10)
                    .padding(.leading, 25)
                    .padding(.trailing, 25)
                
                
                Spacer()
                }
            }
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
