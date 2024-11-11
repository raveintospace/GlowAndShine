//
//  ContentView.swift
//  GlowAndShine
//
//  Created by Uri on 1/9/24.
//

import SwiftUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) private var router
    
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
            Button("Open Color Bars animation") {
                router.showScreen(.fullScreenCover) { _ in
                    ColorBarsAnimation()
                }
            }
            Button("Open Numeric Transition") {
                router.showScreen(.fullScreenCover) { _ in
                    NumericTransition()
                }
            }
            Button("Open Numeric Countdown") {
                router.showScreen(.fullScreenCover) { _ in
                    NumericCountdown()
                }
            }
            Button("Open Sheet Corner Radius") {
                router.showScreen(.fullScreenCover) { _ in
                    SheetCornerRadius()
                }
            }
            Button("Open Compare Images") {
                router.showScreen(.fullScreenCover) { _ in
                    CompareImages()
                }
            }
            Button("Open ScrollView Visual Effect") {
                router.showScreen(.fullScreenCover) { _ in
                    ScrollViewVisualEffect()
                }
            }
            Button("Open Animated Visual Scroll") {
                router.showScreen(.fullScreenCover) { _ in
                    AnimatedVisualScroll()
                }
            }
            Button("Open ParallaxExample") {
                router.showScreen(.fullScreenCover) { _ in
                    ParallaxExample()
                }
            }
            Button("Open Zoom and Pan") {
                router.showScreen(.fullScreenCover) { _ in
                    ZoomAndPan()
                }
            }
            Button("Open Pulse Animated View") {
                router.showScreen(.fullScreenCover) { _ in
                    PulseAnimatedView()
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
