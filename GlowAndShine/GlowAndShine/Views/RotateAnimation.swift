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
    
    @State private var counter = 0
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.seal")
                .foregroundStyle(.red)
                .font(.title)
                .padding()
                .onTapGesture {
                    router.dismissScreen()
                }
            
            Image(systemName: "fan.desk")
                .symbolEffect(.bounce, value: counter)
                .font(.system(size: 120))
                .foregroundStyle(.pink)
            
            Button("Activate") {
                counter += 1
            }
            .font(.system(size: 20))
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    RouterView { _ in
        RotateAnimation()
    }
}
