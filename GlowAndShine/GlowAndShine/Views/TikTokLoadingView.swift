//
//  TikTokLoadingView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1857151057216102424
//  Created by Uri on 15/11/24.
//

import SwiftUI
import SwiftfulRouting

struct TikTokLoadingView: View {
    
    @Environment(\.router) private var router
    
    let circleDiameter: CGFloat = 140
    let animationDuration: Double = 1.2
    
    var body: some View {
        ZStack {
            RedXMarkButton()
                .onTapGesture {
                    router.dismissScreen()
                }
            
            TimelineView(.animation) { timeline in
                Canvas { context, size in
                    let timeInterval = timeline.date.timeIntervalSinceReferenceDate
                    let phase = timeInterval.remainder(dividingBy: animationDuration) / animationDuration
                    let centerX = size.width / 2
                    let centerY = size.height / 2
                    var blendContext = context
                    blendContext.blendMode = .darken
                    drawCircle(context: blendContext, center: .init(x: centerX + cos(phase * .pi * 2) * circleDiameter / 2, y: centerY),
                               color: .init(red: 77/255, green: 232/255, blue: 244/255),
                               scale: 1 + sin(phase * .pi * 2) * 0.2)
                    drawCircle(context: blendContext, center: .init(x: centerX - cos(phase * .pi * 2) * circleDiameter / 2, y: centerY),
                               color: .init(red: 253/255, green: 62/255, blue: 62/255),
                               scale: 1 - sin(phase * .pi * 2) * 0.2)
                }
            }
            .frame(width: circleDiameter * 2, height: circleDiameter * 2)
        }
    }
}

#Preview {
    TikTokLoadingView()
}

extension TikTokLoadingView {
    
    private func drawCircle(context: GraphicsContext, center: CGPoint, color: Color, scale: CGFloat) {
        var context = context
        context.translateBy(x: center.x, y: center.y)
        context.scaleBy(x: scale, y: scale)
        
        let path = Path(ellipseIn: .init(x: -circleDiameter/2, y: -circleDiameter/2, width: circleDiameter, height: circleDiameter))
        context.fill(path, with: .color(color))
    }
}
