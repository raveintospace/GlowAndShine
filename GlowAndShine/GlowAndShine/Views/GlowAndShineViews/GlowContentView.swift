//
//  ContentView.swift
//  GlowAndShine
//  https://medium.com/@uvolchyk/making-things-glow-and-shine-with-swiftui-80448c560f88
//  Created by Uri on 5/7/24.
//

import SwiftUI
import SwiftfulRouting

struct GlowContentView: View {
    
    @Environment(\.router) var router
    
    @State private var progress1: Double = 0.0
    @State private var progress2: Double = 0.0
    
    var body: some View {
        ZStack {
            ProgressView(progress: progress1)
            ProgressView(progress: progress2)
                .rotationEffect(.degrees(180.0))
            Text("X")
                .bold()
                .font(.system(size: 30))
                .onTapGesture {
                    router.dismissScreen()
                }
        }
        .padding()
        .onAppear() {
            withAnimation(
                .linear(duration: 2.0)
                .repeatForever(autoreverses: false)
            ) {
                progress1 = 1.0
            }
            withAnimation(
                .linear(duration: 2.0)
                .repeatForever(autoreverses: false)
                .delay(1.0)
            ) {
                progress2 = 1.0
            }
        }
    }
}

#Preview {
    RouterView { _ in
        GlowContentView()
    }
}
