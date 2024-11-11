//
//  AnimatedVisualScroll.swift
//  GlowAndShine
//  https://shorturl.at/DkPas
//  Created by Uri on 11/11/24.
//

import SwiftUI
import SwiftfulRouting

struct AnimatedVisualScroll: View {
    
    @Environment(\.router) private var router
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(0..<10) { item in
                    RoundedRectangle(cornerRadius: 32)
                        .fill(Color.blue)
                        .frame(height: 200)
                        .overlay(content: {
                            Text("\(item)")
                                .font(.system(size: 60, weight: .bold, design: .rounded))
                                .frame(maxWidth: .infinity)
                        })
                        .visualEffect { content, proxy in
                            content
                                .hueRotation(
                                    Angle(degrees: proxy.frame(in: .global).origin.y / 8)
                                )
                        }
                        .onTapGesture {
                            router.dismissScreen()
                        }
                }
                .padding()
            }
        }
    }
}

#Preview {
    AnimatedVisualScroll()
}
