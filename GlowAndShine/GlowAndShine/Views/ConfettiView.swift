//
//  ConfettiView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1823433156558774665
//  https://github.com/simibac/ConfettiSwiftUI
//  Created by Uri on 16/8/24.
//

import SwiftUI
import ConfettiSwiftUI

struct ConfettiView: View {

    @State private var confettiCounter: Int = 0
    
    var body: some View {
        ZStack {
            ConfettiCannon(
                counter: $confettiCounter,
                num: 50,
                fadesOut: false,
                openingAngle: .degrees(0),
                closingAngle: .degrees(360),
                radius: 200
            )
            
            ConfettiCannon(
                counter: $confettiCounter,
                num: 30,
                confettis: [.text("💙"), .text("♥️")],
                confettiSize: 20,
                radius: 300
            )
            
            Text("🥳")
                .font(.system(size: 150))
                .onTapGesture {
                    confettiCounter += 1
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        Button("Fast confetti 🎉") {
            confettiCounter += 1
        }
        .confettiCannon(counter: $confettiCounter)
    }
}

#Preview {
    ConfettiView()
}
