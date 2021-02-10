//
//  AppIconTools.swift
//  AppIcon
//
//  Created by Julien Perso on 08/02/2021.
//

import Foundation
import SwiftUI

struct AppIconTools {
    
    static func generate(view: SwiftUI.AnyView, size: Int = 1024) {
        let nsview = NSHostingView(rootView: view)
        nsview.frame = .init(x: 0, y: 0, width: size, height: size)
        let rep = nsview.bitmapImageRepForCachingDisplay(in: nsview.bounds)!
        nsview.cacheDisplay(in: nsview.bounds, to: rep)
        let data = rep.representation(using: NSBitmapImageRep.FileType.png, properties: [:])!
        try! data.write(to: URL(fileURLWithPath: "/Users/julien/Downloads/AppIcon.png"))
    }
    
}
