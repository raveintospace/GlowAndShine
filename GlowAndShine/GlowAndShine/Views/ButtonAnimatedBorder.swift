//
//  ButtonAnimatedBorder.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1858600368550408418
//  Created by Uri on 29/11/24.
//

import SwiftUI
import SwiftfulRouting

struct ButtonAnimatedBorder: View {
    
    @Environment(\.router) private var router
    
    var text: String = "Some text"
    var buttonAction: (() -> Void)? = nil
    var buttonBackgroundColors: [Color] = [.blue, .purple]
    var buttonBorderColors: [Color] = [.orange, .yellow]
    
    @State private var progress: CGFloat = 0
    
    var body: some View {
        Button(action: router.dismissScreen) {
            Text(text)
                .foregroundStyle(.white)
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(LinearGradient(colors: buttonBackgroundColors, startPoint: .leading, endPoint: .trailing))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(color: .blue.opacity(0.3), radius: 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.white.opacity(0.2), lineWidth: 2)
                        .overlay(RoundedRectangle(cornerRadius: 20)
                            .trim(from: max(0, progress - 0.1), to: progress)
                            .stroke(
                                LinearGradient(colors: buttonBorderColors, startPoint: .leading, endPoint: .trailing),
                                style: StrokeStyle(lineWidth: 4, lineCap: .round)
                            ).blur(radius: 2))
                )
        }
        .padding()
        .onAppear {
            withAnimation(.linear(duration: 6).repeatForever(autoreverses: false)) {
                progress = 1
            }
        }
    }
}

#Preview {
    ButtonAnimatedBorder()
}
