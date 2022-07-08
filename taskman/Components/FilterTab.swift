//
//  FilterTab.swift
//  taskman
//
//  Created by yury mid on 07.07.2022.
//

import SwiftUI



struct FilterTab: View {
    @State var location:String = "tasklist"
    @State var selected:String = "all"
    @State var currentColor:String = "FFFFFF"
    @State var disabledColor:String = "000000"
    
    
    var body: some View {
        ZStack() {
            Color.init(hex: "FBC42C")
            .cornerRadius(25)
            .frame(height: 55)
            .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)
            if location == "tasklist" {
                HStack{

                    Button{
                        print("all tasklist")
                        selected = "all"
                    }label: {
                        VStack {
                            Label("all", systemImage: "infinity")
                                .labelStyle(.iconOnly)
                                .font(.system(size: 17))
                            Text("all")
                                .font(.system(size: 14))
                        }
                        .foregroundColor(Color.init(hex: selected == "all" ? currentColor : disabledColor))
                    }
                    Spacer()

                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 1, height: 40)
                        .foregroundColor(.white)
                    Spacer()
                    Button{
                        print("done tasklist")
                        selected = "done"
                    }label: {
                        VStack {
                            Label("done", systemImage: "checkmark.circle")
                                .labelStyle(.iconOnly)
                                .font(.system(size: 15))
                            Text("done")
                                .font(.system(size: 13))
                        }
                        .foregroundColor(Color.init(hex: selected == "done" ? currentColor : disabledColor))
                    }
                    Spacer()

                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 1, height: 40)
                        .foregroundColor(.white)
                    Spacer()
                    Button{
                        print("unfin tasklist")
                        selected = "unfin"
                    }label: {
                        VStack {
                            Label("unfin", systemImage: "x.circle")
                                .labelStyle(.iconOnly)
                                .font(.system(size: 15))
                            Text("unfin")
                                .font(.system(size: 13))
                        }
                        .foregroundColor(Color.init(hex: selected == "unfin" ? currentColor : disabledColor))
                    }
                    
                    
                }
                .padding(.leading, 50)
                .padding(.trailing, 50)
            }else if location == "team" {
                HStack{

                    Spacer()
                    Button{
                        print("team")
                        selected = "team"
                    }label: {
                        VStack {
                            Label("team", systemImage: "person.3.fill")
                                .labelStyle(.iconOnly)
                                .font(.system(size: 15))
                            Text("team")
                                .font(.system(size: 13))
                        }
                        .foregroundColor(Color.init(hex: selected == "team" ? currentColor : disabledColor))
                    }
                    Spacer()

                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 1, height: 40)
                        .foregroundColor(.white)
                    Spacer()
                    Button{
                        print("requests")
                        selected = "requests"
                    }label: {
                        VStack {
                            Label("requests", systemImage: "person.crop.circle.badge.plus")
                                .labelStyle(.iconOnly)
                                .font(.system(size: 15))
                            Text("requests")
                                .font(.system(size: 13))
                        }
                        .foregroundColor(Color.init(hex: selected == "requests" ? currentColor : disabledColor))
                    }
                    Spacer()

                    
                    
                    
                }
                .padding(.leading, 5)
                .padding(.trailing, 5)
            }
        }
    }
    

    
}




struct FilterTab_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FilterTab()
        }.previewLayout(.fixed(width: 350, height:100))
    }
}
