//
//  ConfettiView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1823433156558774665
//  https://github.com/simibac/ConfettiSwiftUI
//  Created by Uri on 16/8/24.
//

import SwiftUI
import ConfettiSwiftUI
import SwiftfulRouting

struct ConfettiView: View {
    
    @Environment(\.router) var router
    
    @State private var confettiCounter: Int = 0
    
    var body: some View {
        VStack {
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
                    num: 10,
                    confettis: [.text("⭐️"), .text("✨")],
                    confettiSize: 100,
                    radius: 100
                )
                
                Text("🥳")
                    .font(.system(size: 150))
                    .onTapGesture {
                        confettiCounter += 1
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                Button("Fast confetti 🎉") {
                    confettiCounter += 1
                }
                .confettiCannon(counter: $confettiCounter)
                
                Image(systemName: "xmark.seal")
                    .foregroundStyle(.red)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .onTapGesture {
                        router.dismissScreen()
                    }
            }
        }
    }
}

#Preview {
    RouterView { _ in
        ConfettiView()
    }
}
