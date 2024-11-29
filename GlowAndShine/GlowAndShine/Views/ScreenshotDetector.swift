//
//  ScreenshotDetector.swift
//  GlowAndShine
//
//  Created by Uri on 29/11/24.
//

import SwiftUI
import SwiftfulRouting

struct ScreenshotDetector: View {
    
    @Environment(\.router) private var router
    
    @State private var isCaptured: Bool = false
    
    private let screenshotPublisher = NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)
    
    var body: some View {
        VStack {
            RedXMarkButton()
                .onTapGesture {
                    router.dismissScreen()
                }
                .frame(height: 100)
            
            Text(isCaptured ? "Screenshot captured" : "Take a screenshot")
                .foregroundStyle(isCaptured ? .red : .primary)
                .font(.system(size: 40, weight: .black))
                .multilineTextAlignment(.center)
                .padding()
                .onReceive(screenshotPublisher) { _ in
                    isCaptured = true
                }
        }
    }
}

#Preview {
    ScreenshotDetector()
}
