//
//  Parallax Example.swift
//  GlowAndShine
//
//  Created by Uri on 17/10/24.
//

import SwiftUI
import SwiftfulRouting

struct ParallaxExample: View {
    
    @Environment(\.router) var router
    
    let pictures = ["paral1", "paral2", "paral3"]
    
    var body: some View {
        Text("SwiftUI Parallax")
            .font(.system(size: 40))
            .fontDesign(.rounded)
            .bold()
            .onTapGesture {
                router.dismissScreen()
            }
        
        ScrollView(.horizontal) {
            LazyHStack(spacing: 16) {
                ForEach(pictures, id: \.self) { picture in
                    ZStack {
                        Image(picture)
                            .resizable()
                            .scaledToFit()
                            .scrollTransition(axis: .horizontal) { content, phase in
                                return content.offset(x: phase.value * -250)
                            }
                            .containerRelativeFrame(.horizontal)
                            .clipShape(RoundedRectangle(cornerRadius: 32))
                            .onTapGesture {
                                router.dismissScreen()
                            }
                    }
                }
            }
            .contentMargins(.horizontal, 32)
        }
    }
}

#Preview {
    ParallaxExample()
}
