//
//  AppleLogo.swift
//  GlowAndShine
//
//  Created by Uri on 19/7/24.
//

import SwiftUI

struct AppleLogo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let scaleFactor: CGFloat = min(rect.width, rect.height) / 1000
        let xOffset = (rect.width - (scaleFactor * 1000)) / 2
        let yOffset = (rect.height - (scaleFactor * 1000)) / 2
        
        func scaledPoint(x: CGFloat, y: CGFloat) -> CGPoint {
            return CGPoint(x: x * scaleFactor + xOffset, y: y * scaleFactor + yOffset)
        }
        
        path.move(to: scaledPoint(x: 788.1, y: 340.9))
        path.addCurve(to: scaledPoint(x: 679.9, y: 531.4), control1: scaledPoint(x: 782.3, y: 345.4), control2: scaledPoint(x: 679.9, y: 403.1))
        path.addCurve(to: scaledPoint(x: 814.1, y: 733.6), control1: scaledPoint(x: 679.9, y: 679.8), control2: scaledPoint(x: 810.2, y: 732.3))
        path.addCurve(to: scaledPoint(x: 745.4, y: 875.5), control1: scaledPoint(x: 813.5, y: 736.8), control2: scaledPoint(x: 793.4, y: 805.5))
        path.addCurve(to: scaledPoint(x: 589.9, y: 998.6), control1: scaledPoint(x: 702.6, y: 937.1), control2: scaledPoint(x: 657.9, y: 998.6))
        path.addCurve(to: scaledPoint(x: 425.9, y: 959.1), control1: scaledPoint(x: 521.9, y: 998.6), control2: scaledPoint(x: 504.4, y: 959.1))
        path.addCurve(to: scaledPoint(x: 260, y: 999.9), control1: scaledPoint(x: 349.4, y: 959.1), control2: scaledPoint(x: 322.2, y: 999.9))
        path.addCurve(to: scaledPoint(x: 104.5, y: 872.9), control1: scaledPoint(x: 197.8, y: 999.9), control2: scaledPoint(x: 154.4, y: 942.9))
        path.addCurve(to: scaledPoint(x: 0, y: 541.8), control1: scaledPoint(x: 46.7, y: 790.7), control2: scaledPoint(x: 0, y: 663))
        path.addCurve(to: scaledPoint(x: 250.8, y: 244.3), control1: scaledPoint(x: 0, y: 347.4), control2: scaledPoint(x: 126.4, y: 244.3))
        path.addCurve(to: scaledPoint(x: 413.5, y: 287.7), control1: scaledPoint(x: 316.9, y: 244.3), control2: scaledPoint(x: 372, y: 287.7))
        path.addCurve(to: scaledPoint(x: 589.8, y: 241.7), control1: scaledPoint(x: 453, y: 287.7), control2: scaledPoint(x: 514.6, y: 241.7))
        path.addCurve(to: scaledPoint(x: 788.1, y: 340.9), control1: scaledPoint(x: 618.3, y: 241.7), control2: scaledPoint(x: 720.7, y: 244.3))
        
        path.move(to: scaledPoint(x: 554.1, y: 159.4))
        path.addCurve(to: scaledPoint(x: 607.2, y: 20.1), control1: scaledPoint(x: 585.2, y: 122.5), control2: scaledPoint(x: 607.2, y: 71.3))
        path.addCurve(to: scaledPoint(x: 605.3, y: 0), control1: scaledPoint(x: 607.2, y: 13), control2: scaledPoint(x: 606.6, y: 5.8))
        path.addCurve(to: scaledPoint(x: 458.2, y: 75.8), control1: scaledPoint(x: 554.7, y: 1.9), control2: scaledPoint(x: 494.5, y: 33.7))
        path.addCurve(to: scaledPoint(x: 403.1, y: 211.3), control1: scaledPoint(x: 429.7, y: 108.2), control2: scaledPoint(x: 403.1, y: 159.4))
        path.addCurve(to: scaledPoint(x: 405, y: 229.4), control1: scaledPoint(x: 403.1, y: 219.1), control2: scaledPoint(x: 404.4, y: 226.9))
        path.addCurve(to: scaledPoint(x: 418.6, y: 230.7), control1: scaledPoint(x: 408.2, y: 230), control2: scaledPoint(x: 413.4, y: 230.7))
        path.addCurve(to: scaledPoint(x: 554.1, y: 159.4), control1: scaledPoint(x: 464, y: 230.7), control2: scaledPoint(x: 521.1, y: 200.3))
        
        return path
    }
}

#Preview {
    AppleLogo()
}
