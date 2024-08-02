//
//  GlowCapsule.swift
//  GlowAndShine
//
//  Created by Uri on 5/7/24.
//

import SwiftUI

struct GlowCapsule: View {
    
    @State private var progress: Double = 0.0
    
    var body: some View {
        glowingCapsule
    }
}

#Preview {
    GlowCapsule()
}

extension GlowCapsule {
    private var glowingCapsule: some View {
        Capsule()
            .trim(from: .zero, to: progress)
            .glow(
                fill: .glowPalette,
                lineWidth: 5.0
            )
            .onAppear() {
                withAnimation(
                    .linear(duration: 2.0)
                    .repeatForever(autoreverses: false)
                ) {
                    progress = 2.0
                }
            }
    }
}
