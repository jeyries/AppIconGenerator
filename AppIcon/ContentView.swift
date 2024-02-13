//
//  ContentView.swift
//  AppIcon
//
//  Created by Julien Perso on 06/02/2021.
//

import SwiftUI
import QuickLook

struct ContentView: View {
    
    @State var previewURL: URL?
    
    var body: some View {
        VStack {
            Button("Generate !", action: generate)
            IconView()
                .scaleEffect(1.0/4)
                .frame(width: 256, height: 256, alignment: .center)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .quickLookPreview($previewURL)
    }
    
    func generate() {
        let nsview = NSHostingView(rootView: AnyView(IconView()))
        nsview.frame = .init(x: 0, y: 0, width: 1024, height: 1024)
        let rep = nsview.bitmapImageRepForCachingDisplay(in: nsview.bounds)!
        nsview.cacheDisplay(in: nsview.bounds, to: rep)
        let data = rep.representation(using: .png, properties: [:])!
        let url = URL.downloadsDirectory.appending(component: "AppIcon.png")
        try! data.write(to: url)
        self.previewURL = url
    }
}


