//
//  IconView.swift
//  AppIcon
//
//  Created by Julien Perso on 06/02/2021.
//

import SwiftUI

struct IconView: View {
    
    let percent = "\u{0025}"
    let divide = "\u{00F7}"
    let multiply = "\u{00D7}"
    let substract =  "\u{2212}"
    let add = "\u{002B}"
    let equal = "\u{003D}"
    
    let font = Font.system(size: 200)
    let buttonDarkGray = Color("buttonDarkGray")
    let buttonLighGray = Color("buttonLighGray")
    let offset: CGFloat = -15
    let spacing: CGFloat = 70
    
    var body: some View {
        ZStack {
            buttonDarkGray
            
            VStack(spacing: spacing) {
                
                Text(verbatim: "3 \u{00D7} 7")
                    .font(font.bold())
                    .padding(50)
                    .frame(width: 3*200 + 2*spacing, height: 200, alignment: .trailing)
                    .background(Color.white)
                    .foregroundColor(buttonDarkGray)
                    .cornerRadius(50)
                
                HStack(alignment: VerticalAlignment.center, spacing: spacing  ) {
                    
                    ButtonView(text: add, offset: offset)
                    ButtonView(text: multiply, offset: offset)
                    ButtonView(text: percent, font: Font.system(size: 120).bold())
                    
                }
                
                HStack(spacing: spacing) {
                    
                    ButtonView(text: substract, offset: offset)
                    ButtonView(text: divide, offset: offset)
                    ButtonView(text: equal, offset: offset, color: .pink)
                    
                }
            }
            
            
            
        }.frame(width: 1024, height: 1024, alignment: .center)
        
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
            .scaleEffect(1.0/2)
            .frame(width: 512, height: 512, alignment: .center)
            //.previewLayout(.fixed(width: 512, height: 512))
            
    }
}

struct ButtonView: View {
    
    var text: String
    var offset: CGFloat = 0
    //var size: CGFloat = 200
    var font: Font = Font.system(size: 200)
    var color: Color = Color("buttonLighGray")

    var body: some View {
        
        ZStack {
            color
                .cornerRadius(50)
                .frame(width: 200, height: 200)
                
            Text(verbatim: text)
                .lineLimit(1)
                //.minimumScaleFactor(0.5)
                .foregroundColor(Color.white)
                .font(font)
                //.font(Font.system(size: size))
                .offset(y: offset)
            
        }
        .frame(width: 200, height: 200)
            

        
    }
    
    
}


