//
//  LabeledInput.swift
//  taskman
//
//  Created by yury mid on 03.07.2022.
//

import SwiftUI

struct LabeledInput: View {
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
                
            
            TextField(
                TFPlaceholder,
                text: $TFText

            )
            
            .shadow(radius: 10)
            .textFieldStyle(CustomTFStyle())

                
        }
    }
}

public struct CustomTFStyle : TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .padding(.leading, 20)
            .foregroundColor(Color.init(hex:"CCCCCC"))
            .font(.system(size: 15, weight: .light, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .shadow(radius: 12)
            .background(Color.init(hex: "333333"))
            .cornerRadius(15.0)
            .disableAutocorrection(true)
    }
}

struct LabeledInput_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LabeledInput()
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

