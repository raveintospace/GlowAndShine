//
//  AppleLogoAnimation.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1813647906282541159
//  Created by Uri on 18/7/24.
//

import SwiftUI

struct AppleLogoAnimation: View {
    
    @State private var animate = false
    
    var body: some View {
        Image(systemName: "apple.logo")
            .trim(from: 0.0, to: animate ? 1.0 : 0.0)
            .stroke(
                LinearGradient(gradient: Gradient(colors: [.red,
                                                           .blue,
                                                           .green,
                                                           .orange]),
                               startPoint: .bottomLeading,
                               endPoint: .topTrailing),
                style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round)
            )
            .hueRotation(.degrees(animate ? 360 : 0))
            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: animate)
            .onAppear {
                animate = true
            }
    }
}

#Preview {
    AppleLogoAnimation()
}

struct AppleLogo: View {
    
    var body: some View {
        Image(systemName: "apple.logo")
    }
}

