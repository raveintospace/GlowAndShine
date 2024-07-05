//
//  GlowCapsule.swift
//  GlowAndShine
//
//  Created by Uri on 5/7/24.
//

import SwiftUI

struct GlowCapsule: View {
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
            .glow(
                fill: .glowPalette,
                lineWidth: 5.0
            )
    }
}
