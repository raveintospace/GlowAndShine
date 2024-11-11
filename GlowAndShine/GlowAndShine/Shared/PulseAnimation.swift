//
//  PulseAnimation.swift
//  GlowAndShine
//
//  Created by Uri on 11/11/24.
//

import SwiftUI

struct PulseAnimation: ViewModifier {
    @State private var animatePulse: Bool = false
    
    func body(content: Content) -> some View {
        content
            .opacity(animatePulse ? 0.8: 1)
            .scaleEffect(animatePulse ? 1.3 : 1)
            .onAppear {
                withAnimation(
                    .bouncy(duration: 0.5).repeatForever()
                ) {
                    animatePulse.toggle()
                }
            }
    }
}

extension View {
    func animatePulse() -> some View {
        modifier(PulseAnimation())
    }
}
