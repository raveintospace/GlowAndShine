//
//  ActivityRingView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1826332497485148353
//  Created by Uri on 23/8/24.
//

import SwiftUI
import SwiftfulRouting

struct CustomActivityRing: View {
    
    let progress: CGFloat
    let color: Color
    let ringWidth: CGFloat
   
    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.2), lineWidth: ringWidth)
                .shadow(radius: 5)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(color.gradient, style: StrokeStyle(lineWidth: ringWidth, lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
    }
}

struct ActivityRingsView: View {
    
    @Environment(\.router) var router
    
    @State private var progress: CGFloat = 0.46
    
    var body: some View {
        ZStack {
            Color.white.opacity(0.9).ignoresSafeArea()
            
            VStack {
                ZStack {
                    CustomActivityRing(progress: progress, color: .red, ringWidth: 20)
                        .frame(width: 250, height: 250)
                    CustomActivityRing(progress: progress, color: .blue, ringWidth: 18)
                        .frame(width: 200, height: 200)
                    CustomActivityRing(progress: progress, color: .green, ringWidth: 16)
                        .frame(width: 150, height: 150)
                    Text(progress, format: .percent.precision(.fractionLength(1)))
                        .font(.system(.largeTitle, design: .rounded, weight: .bold))
                        .foregroundStyle(.black)
                        .shadow(radius: 10)
                }
                
                Slider(value: $progress, in: 0...1)
                    .padding(.horizontal, 20)
                    .padding(.vertical)
                
                Image(systemName: "xmark.seal")
                    .foregroundStyle(.red)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top)
                    .onTapGesture {
                        router.dismissScreen()
                    }
            }
        }
    }
}


#Preview {
    RouterView { _ in
        ActivityRingsView()
    }
}
