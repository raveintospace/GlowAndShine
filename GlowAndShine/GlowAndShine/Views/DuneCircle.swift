//
//  ContentView.swift
//  GlowAndShine
//  
//  Created by Uri on 5/7/24.
//

import SwiftUI

struct DuneCircle: View {
    var body: some View {
        VStack {
            title
            Spacer()
            mainCircle
            Spacer()
        }
        .padding()
    }
}

#Preview {
    DuneCircle()
}

extension DuneCircle {
    private var title: some View {
        Text("Glow and shine")
            .bold()
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.orange)
    }
    
    private var mainCircle: some View {
        Circle()
            .stroke(lineWidth: 2.0)
            .fill(.orange)
            .overlay {
                glowingCircle
            }
    }
    
    private var glowingCircle: some View {
        Circle()
            .stroke(lineWidth: 8.0)
            .fill(.red)
            .blur(radius: 6.0)
    }
}
