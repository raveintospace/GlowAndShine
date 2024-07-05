//
//  ProgressView.swift
//  GlowAndShine
//
//  Created by Uri on 5/7/24.
//

import SwiftUI

struct ProgressView: View, Animatable {
    
    var progress: Double
    private let delay: Double = 0.2
    
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }
    
    var body: some View {
        Capsule()
            .trim(from: {
                if progress > delay {
                    progress - delay
                } else {
                    .zero
                }
            }(),
                  to: {
                if progress > 0.5 {
                    0.5
                } else {
                    progress
                }
            }()
            )
            .glow(
                fill: .glowPalette,
                lineWidth: 5.0
            )
    }
}

#Preview {
    ProgressView(progress: 0.0)
}
