//
//  RotateAnimation.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1811384208998514975
//  Created by Uri on 11/7/24.
//

import SwiftUI

struct RotateAnimation: View {
    
    @State private var counter = 0
    
    var body: some View {
        HStack {
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
    RotateAnimation()
}
