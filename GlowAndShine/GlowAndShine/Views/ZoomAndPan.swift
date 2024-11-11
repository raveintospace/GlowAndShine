//
//  ZoomAndPan.swift
//  GlowAndShine
//
//  Created by Uri on 18/10/24.
//

import SwiftUI
import Zoomable
import SwiftfulRouting

struct ZoomAndPan: View {
    
    @Environment(\.router) private var router
    
    var body: some View {
        VStack(spacing: 40) {
            RedXMarkButton()
                .frame(height: 10)
                .padding(.bottom, 10)
                .onTapGesture {
                    router.dismissScreen()
                }
            
            Image("bambi").resizable().scaledToFit()
                .zoomable()
        }
    }
}

#Preview {
    ZoomAndPan()
}
