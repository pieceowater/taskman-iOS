//
//  MainHeader.swift
//  taskman
//
//  Created by yury mid on 05.07.2022.
//

import SwiftUI

struct MainHeader: View {
    @State var PageText: String = "Taskman."
    @State var UserAvatar: String = "user-avatar"
    
    
    var body: some View {
        ZStack{
            Color.init(hex: "494848")
            .cornerRadius(50)
            .frame(height: 65)
            .shadow(color: Color.init(hex: "303030"), radius: 15, x: 0, y: 5)

            HStack {
                HStack{
                    Image("taskmanicon")
                        .resizable()
                        .frame(width:34,height:34)
                        .cornerRadius(5)
                    Text(PageText)
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .regular, design: .default))
                }
                Spacer()
                ZStack{
                    Color.init(hex: "FBC42C")
                        .frame(width: 45, height: 45)
                        .cornerRadius(50)
                    if (UserAvatar != "user-avatar"){
                        Image(base64String: UserAvatar)?
                            .resizable()
                            .frame(width: 45, height: 45)
                            .cornerRadius(50)
                    }else{
                        Image("user-avatar")
                            .resizable()
                            .frame(width: 45, height: 45)
                            .cornerRadius(50)
                    }
                        
                }
                
            }.padding(.leading, 25)
            .padding(.trailing, 10)
                
        }
            
        
    }
}

struct MainHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainHeader()
        }
        .previewLayout(.fixed(width: 350, height:100))
    }
}

extension Image {
    init?(base64String: String) {
        guard let data = Data(base64Encoded: base64String) else { return nil }
        guard let uiImage = UIImage(data: data) else { return nil }
        self = Image(uiImage: uiImage)
    }
}


//            .mask(CustomShape(radius: 100))
struct CustomShape: Shape {
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let tl = CGPoint(x: rect.minX, y: rect.minY)
        let tr = CGPoint(x: rect.maxX, y: rect.minY)
        let brs = CGPoint(x: rect.maxX, y: rect.maxY - radius)
        let brc = CGPoint(x: rect.maxX - radius, y: rect.maxY - radius)
        let bls = CGPoint(x: rect.minX + radius, y: rect.maxY)
        let blc = CGPoint(x: rect.minX + radius, y: rect.maxY - radius)
        
        path.move(to: tl)
        path.addLine(to: tr)
        path.addLine(to: brs)
        path.addRelativeArc(center: brc, radius: radius,
          startAngle: Angle.degrees(0), delta: Angle.degrees(90))
        path.addLine(to: bls)
        path.addRelativeArc(center: blc, radius: radius,
          startAngle: Angle.degrees(90), delta: Angle.degrees(90))
        
        return path
    }
}
