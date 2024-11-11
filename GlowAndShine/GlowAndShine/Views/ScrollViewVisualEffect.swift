//
//  ScrollViewVisualEffect.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1846625717926375742
//  Created by Uri on 17/10/24.
//

import SwiftUI
import SwiftfulRouting

struct ScrollViewVisualEffect: View {
    
    @Environment(\.router) private var router
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                VStack(spacing: 16) {
                    ForEach(0...50, id: \.self) { index in
                        RoundedRectangle(cornerRadius: 24)
                            .fill(.purple)
                            .overlay(content: {
                                HStack {
                                    Text("\(index)")
                                        .font(.system(size: 60, weight: .bold, design: .rounded))
                                        .frame(maxWidth: .infinity)
                                    Text("X")
                                        .padding()
                                        .padding(.leading, -50)
                                        .onTapGesture {
                                            router.dismissScreen()
                                        }
                                }
                            })
                            .frame(height: 100)
                            .padding()
                            .visualEffect { content, geometry in
                                return content
                                    .hueRotation(.degrees(geometry.frame(in: .global).midY / 8))
                            }
                            .scrollTransition(.animated) { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0.2)
                                    .scaleEffect(phase.isIdentity ? 1 : 0.2)
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewVisualEffect()
}
