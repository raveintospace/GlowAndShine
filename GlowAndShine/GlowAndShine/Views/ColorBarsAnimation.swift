//
//  ColorBarsAnimation.swift
//  GlowAndShine
//  https://shorturl.at/fMLUN
//  Created by Uri on 30/8/24.
//

import SwiftUI
import SwiftfulRouting

struct ColorBarsAnimation: View {
    
    @Environment(\.router) var router
    
    @State private var currentIndex: Int = 0
    let colors: [Color] = [.blue, .green, .yellow, .orange, .red]
    
    var body: some View {
        RedXMarkButton()
            .onTapGesture {
                router.dismissScreen()
            }
        HStack(spacing: 10) {
            ForEach(0..<5) { index in
                RoundedRectangle(cornerRadius: 20)
                    .fill(colors[index])
                    .frame(width: 4, height: currentIndex == index ? 200 : 30)
                    .animation(.spring(duration: 0.9), value: currentIndex)
            }
        }
        .onAppear {
            startAnimation()
        }
    }
}

#Preview {
    RouterView { _ in
        ColorBarsAnimation()
    }
}

extension ColorBarsAnimation {
    
    private func startAnimation() {
        Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) { timer in
            currentIndex = (currentIndex + 1) % 5
        }
    }
}

// when currentIndex == 0, % 5 resets it to 0
