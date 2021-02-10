//
//  ContentView.swift
//  AppIcon
//
//  Created by Julien Perso on 06/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Generate !", action: generate)
            IconView()
                .scaleEffect(1.0/4)
                .frame(width: 256, height: 256, alignment: .center)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func generate() {
        AppIconTools.generate(view: AnyView(IconView()), size: 1024)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

