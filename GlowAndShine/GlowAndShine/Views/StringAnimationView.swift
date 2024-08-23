//
//  StringAnimationView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1825606710129738049
//  Created by Uri on 23/8/24.
//

import SwiftUI

struct StringAnimationView: View {
    
    private let text: String = "SwiftUI Views"
    private let colors: [Color] = [Color.blue, .orange, .green, .purple, .red, .brown, .white, .pink, .indigo, .mint, .yellow]
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ForEach(colors, id: \.self) { color in
            HStack(spacing: 0) {
                ForEach(Array(text.enumerated()), id: \.offset) { index, letter in
                    Text(String(letter))
                        .font(.system(size: 50, weight: .heavy, design: .rounded))
                        .foregroundStyle(color.gradient)
                        .rotation3DEffect(
                            .degrees(isAnimating ? 360 : 0),
                            axis: (x: 1, y: 0, z: 0))
                        .animation(.spring(duration: 1)
                            .repeatForever(autoreverses: false)
                            .delay(Double(index) * 0.1), value: isAnimating)
                }
            }
        }
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    StringAnimationView()
}
