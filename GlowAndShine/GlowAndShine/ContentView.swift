//
//  ContentView.swift
//  GlowAndShine
//
//  Created by Uri on 1/9/24.
//

import SwiftUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("Open Glow & Shine") {
                router.showScreen(.fullScreenCover) { _ in
                    GlowContentView()
                }
            }
            Button("Open Button Border Color Animated") {
                router.showScreen(.fullScreenCover) { _ in
                    ButtonBorderColorAnimated()
                }
            }
            Button("Open Rotate Animation") {
                router.showScreen(.fullScreenCover) { _ in
                    RotateAnimation()
                }
            }
        }
    }
}

#Preview {
    RouterView { _ in
        ContentView()
    }
}
