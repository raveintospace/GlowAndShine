//
//  HorizontalAnimatedScroll.swift
//  GlowAndShine
//  https://shorturl.at/DkPas
//  Created by Uri on 11/11/24.
//

import SwiftUI
import SwiftfulRouting

struct HorizontalAnimatedScroll: View {
    
    @Environment(\.router) private var router
    
    private var screenWidth: CGFloat = .init(UIScreen.main.bounds.width)
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "xmark.seal")
                .foregroundStyle(.red)
                .font(.title)
                .onTapGesture {
                    router.dismissScreen()
                }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ForEach(1..<11) { item in
                        HStack {
                            ZStack {
                                Circle()
                                    .fill(.blue)
                                    .frame(height: 50)
                                    .padding(4)
                                Text("\(item)")
                                    .foregroundStyle(.orange)
                            }
                            .visualEffect { content, proxy in
                                let frame = proxy.frame(in: .global)
                                let screenWidth = self.screenWidth
                                
                                // center X of the screen
                                let centerXScreen = screenWidth / 2
                                
                                // distance from center of screen to center of frame
                                let distanceX = abs(centerXScreen - frame.midX)
                                
                                // scale factor
                                let scale = 1.5 - (distanceX / centerXScreen)
                                
                                // hue rotation angle
                                let hueRotationDegrees = Angle.degrees((1 - distanceX) / -1.50)
                                
                                return content
                                    .scaleEffect(scale)
                                    .hueRotation(hueRotationDegrees)
                                    .brightness(distanceX / centerXScreen * 0.3)
                            }
                        }
                        .scrollTargetLayout()
                    }
                }
            }
            .defaultScrollAnchor(.center)
            .contentMargins(.horizontal, screenWidth / 2)
        }
    }
}

#Preview {
    HorizontalAnimatedScroll()
}
