//
//  CompareImages.swift
//  GlowAndShine
//
//  Created by Uri on 17/10/24.
//

import SwiftUI

struct CompareImages: View {
    
    @Environment(\.router) var router
    @State private var sliderPosition: CGFloat = 0
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ZStack {
                    Image("bambi").resizable().scaledToFit()
                    Image("bambi2").resizable().scaledToFit()
                        .mask(
                            Rectangle()
                                .offset(x: sliderPosition + geometry.size.width / 2)
                        )
                    Rectangle()
                        .fill(.white)
                        .frame(width: 9)
                        .overlay {
                            Circle()
                                .fill(.white)
                                .frame(width: 30, height: 30)
                        }
                        .offset(x: sliderPosition)
                }
                .frame(maxWidth: .infinity)
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            sliderPosition = min(max(value.location.x - geometry.size.width / 2, -geometry.size.width / 2), geometry.size.width / 2)
                        }
                )
            }
        }
        .onTapGesture {
            router.dismissScreen()
        }
    }
}

#Preview {
    CompareImages()
}
