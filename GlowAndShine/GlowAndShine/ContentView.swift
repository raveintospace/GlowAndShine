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
        }
    }
}

#Preview {
    RouterView { _ in
        ContentView()
    }
}
