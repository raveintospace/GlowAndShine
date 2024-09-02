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
            Button("Open Apple Logo Animation") {
                router.showScreen(.fullScreenCover) { _ in
                    AppleLogoAnimation()
                }
            }
            Button("Open Gauge Animation") {
                router.showScreen(.fullScreenCover) { _ in
                    GaugeAnimation()
                }
            }
            Button("Open Interactive Card") {
                router.showScreen(.fullScreenCover) { _ in
                    InteractiveCard()
                }
            }
            Button("Open Rule View") {
                router.showScreen(.fullScreenCover) { _ in
                    RuleView()
                }
            }
            Button("Open Wave View") {
                router.showScreen(.fullScreenCover) { _ in
                    WaveView()
                }
            }
            Button("Open Confetti View") {
                router.showScreen(.fullScreenCover) { _ in
                    ConfettiView()
                }
            }
            Button("Open String Animation View") {
                router.showScreen(.fullScreenCover) { _ in
                    StringAnimationView()
                }
            }
            Button("Open Activity Rings View") {
                router.showScreen(.fullScreenCover) { _ in
                    ActivityRingsView()
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
