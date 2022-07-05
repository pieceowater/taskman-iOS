//
//  LabeledPasswordInput.swift
//  taskman
//
//  Created by yury mid on 03.07.2022.
//

import SwiftUI

struct LabeledPasswordInput: View{
    @State  var LText: String = "Text"
    
    @State  var TFText: String = ""
    @State  var TFPlaceholder: String = "Enter..."
    
    
    var body: some View {
        HStack {
            Label {
                Text(LText)
                    .foregroundColor(Color.init(hex: "CCCCCC"))
                    .font(.system(size: 15, weight: .light, design: .default))
                
            } icon: {}
                
            
            SecureField(
                TFPlaceholder,
                text: $TFText

            )
            
            .shadow(radius: 10)
            .textFieldStyle(CustomTFStyle())

                
        }
    }
}


struct LabeledPasswordInput_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LabeledPasswordInput()
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
