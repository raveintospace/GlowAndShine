//
//  SheetCornerRadius.swift
//  GlowAndShine
//
//  Created by Uri on 17/10/24.
//

import SwiftUI
import SwiftfulRouting

struct SheetCornerRadius: View {
    
    @Environment(\.router) var router
    @State private var showDetailSheet: Bool = false
    
    var body: some View {
        VStack {
            RedXMarkButton()
                .onTapGesture {
                    router.dismissScreen()
                }
            Button("Show Detail sheet") {
                showDetailSheet = true
            }
            .frame(maxHeight: .infinity)
        }
        .sheet(isPresented: $showDetailSheet) {
            ZStack {
                Color.blue
                
                Text("Detail Sheet")
                    .presentationDetents([.large])
                    .presentationCornerRadius(100)
            }
        }
    }
}

#Preview {
    SheetCornerRadius()
}
