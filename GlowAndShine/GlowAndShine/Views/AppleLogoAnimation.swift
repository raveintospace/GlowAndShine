//
//  AppleLogoAnimation.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1813647906282541159
//  Created by Uri on 18/7/24.
//

import SwiftUI
import SwiftfulRouting

struct AppleLogoAnimation: View {
    
    @Environment(\.router) var router
    
    @State private var animate = false
    
    var body: some View {
        ZStack {
            AppleLogo()
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
            
            Image(systemName: "xmark.seal")
                .foregroundStyle(.red)
                .font(.title)
                .frame(maxHeight: .infinity, alignment: .top)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 50)
                .onTapGesture {
                    router.dismissScreen()
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(.leading, 60)
    }
}

#Preview {
    RouterView { _ in
        AppleLogoAnimation()
    }
}

