//
//  PulseAnimatedView.swift
//  GlowAndShine
//
//  Created by Uri on 11/11/24.
//

import SwiftUI
import SwiftfulRouting

struct PulseAnimatedView: View {
    
    @Environment(\.router) private var router
    
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundStyle(.blue)
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
