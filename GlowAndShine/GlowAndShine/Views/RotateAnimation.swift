//
//  RotateAnimation.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1811384208998514975
//  Created by Uri on 11/7/24.
//

import SwiftUI
import SwiftfulRouting

struct RotateAnimation: View {
    
    @Environment(\.router) private var router
    
    @State private var bounceCounter = 0
    @State private var rotateCounter = 0
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fan.desk")
                    .symbolEffect(.bounce, value: bounceCounter)
                    .font(.system(size: 120))
                    .foregroundStyle(.pink)
                
                Button("Bounce") {
                    bounceCounter += 1
                }
                .font(.system(size: 20))
                .buttonStyle(.bordered)
            }
            
            HStack {
                Image(systemName: "fan.desk")
                    .symbolEffect(.rotate, value: rotateCounter)
                    .font(.system(size: 120))
                    .foregroundStyle(.pink)
                
                Button("Rotate") {
                    rotateCounter += 1
                }
                .font(.system(size: 20))
                .buttonStyle(.bordered)
            }
            
            Image(systemName: "xmark.seal")
                .foregroundStyle(.red)
                .font(.title)
                .padding()
                .onTapGesture {
                    router.dismissScreen()
                }
        }

    }
}

#Preview {
    RouterView { _ in
        RotateAnimation()
    }
}
