//
//  ZoomAndPan.swift
//  GlowAndShine
//
//  Created by Uri on 18/10/24.
//

import SwiftUI
import Zoomable

struct ZoomAndPan: View {
    var body: some View {
        Image("bambi").resizable().scaledToFit()
            .zoomable()
    }
}

#Preview {
    ZoomAndPan()
}
