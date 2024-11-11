//
//  PulseAnimatedView.swift
//  GlowAndShine
//  https://mobileappcircular.com/our-most-loved-swiftui-modifiers-b7ba26216f88
//  Created by Uri on 11/11/24.
//

import SwiftUI
import SwiftfulRouting

struct PulseAnimatedView: View {
    
    @Environment(\.router) private var router
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundStyle(.blue)
                .animatePulse()
            
            Circle()
                .foregroundStyle(.red)
                .frame(width: 100)
                .animatePulse()
            
            RedXMarkButton()
                .frame(width: 100, height: 100)
                .onTapGesture {
                    router.dismissScreen()
                }
        }
    }
}

#Preview {
    PulseAnimatedView()
}
