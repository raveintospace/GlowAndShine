//
//  NumericTransition.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1838653172585500916
//  Created by Uri on 29/9/24.
//

import SwiftUI
import SwiftfulRouting

struct NumericTransition: View {
    
    @Environment(\.router) var router
    
    var body: some View {
        Text(.now, style: .relative)
            .font(.system(size: 80))
            .monospaced()
            .contentTransition(.numericText())
            .transaction { transaction in
                transaction.animation = .default
            }
        
        RedXMarkButton()
            .onTapGesture {
                router.dismissScreen()
            }
    }
}

#Preview {
    RouterView { _ in
        NumericTransition()
    }
}
