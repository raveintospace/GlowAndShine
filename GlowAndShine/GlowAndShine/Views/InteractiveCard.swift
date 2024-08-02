//
//  InteractiveCard.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1818359726230675903
//  Created by Uri on 2/8/24.
//

import SwiftUI

struct InteractiveCard: View {
    
    @State private var dragOffset: CGSize = .zero
    @State private var isDragging: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(LinearGradient(gradient: .init(colors: [.red, .orange, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 300, height: 200)
                .shadow(radius: 15)
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.black.gradient)
                    .frame(width: 300, height: 200)
                Text("Interactive Card 🔥")
                    .font(.title)
                    .underline()
            }
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(.gray.opacity(0.3), lineWidth: 2))
            .rotation3DEffect(
                .init(degrees: Double(dragOffset.width) / 10),
                axis: (x: 0, y: 1, z: 0))
            .rotation3DEffect(
                .init(degrees: Double(dragOffset.height) / 10),
                axis: (x: 1, y: 0, z: 0))
        }
        .gesture(DragGesture().onChanged { value in
            isDragging = true
            dragOffset = value.translation
        }
            .onEnded { _ in
                isDragging = false
                withAnimation(.spring) { dragOffset = .zero }
            }).animation(isDragging ? .none : .spring(), value: dragOffset)
    }
}

#Preview {
    InteractiveCard()
}
