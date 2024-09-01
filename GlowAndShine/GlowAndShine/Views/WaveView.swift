//
//  WaveView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1823069504341172724
//  Created by Uri on 16/8/24.
//

import SwiftUI
import SwiftfulRouting

struct WaveView: View {
    
    @Environment(\.router) var router
    
    @State private var waveOffset: Angle = .zero
    @State private var progress: Double = 0.64
    @State private var xOffset: CGFloat = .zero
    
    var body: some View {
        ZStack {
            VStack {
                ZStack {
                    Circle()
                        .stroke(.blue, lineWidth: 2)
                    
                    WaveShape(offset: waveOffset, percent: progress, xOffset: 0)
                        .fill(.blue.opacity(0.4))
                        .clipShape(Circle())
                    
                    WaveShape(offset: waveOffset + .degrees(60), percent: progress, xOffset: 0.7)
                        .fill(.blue.opacity(0.4))
                        .clipShape(Circle())
                    
                    Text("\(Int(progress * 100))%")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                .aspectRatio(1, contentMode: .fit)
                .onAppear {
                    withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                        waveOffset = .init(degrees: 360)
                    }
                }
                
                VStack {
                    Slider(value: $progress, in: 0...1, step: 0.01)
                    Text("Progress: ")
                    +
                    Text(progress, format: .percent)
                }
                .padding()
                
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
        WaveView()
    }
}

// idea: splash view que passa de 0 a 100 despres d'x segons
// sense slider
