//
//  GlowAndShineApp.swift
//  GlowAndShine
//
//  Created by Uri on 5/7/24.
//

import SwiftUI
import SwiftfulRouting

@main
struct GlowAndShineApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}
