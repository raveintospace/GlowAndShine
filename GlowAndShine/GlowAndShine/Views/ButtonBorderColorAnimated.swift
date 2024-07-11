//
//  ButtonBorderColorAnimated.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1811111197443527104
//  Created by Uri on 11/7/24.
//

import SwiftUI

struct ButtonBorderColorAnimated: View {
    
    @State var isAnimating: Bool = false
    private let myGradient: Gradient = Gradient(colors: [.red, .blue])
    
    var body: some View {
        ZStack {
            Color.black
            
            LinearGradient(gradient: myGradient,
                           startPoint: isAnimating ? .topTrailing : .bottomLeading,
                           endPoint: isAnimating ? .bottomTrailing : .center)
            .animation(.easeInOut(duration: 1)
                .repeatForever(autoreverses: true), value: isAnimating)
            .frame(width: 200, height: 86)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .blur(radius: 8)
            
            Button("Swift UIButton") { }
                .font(.system(size: 32, weight: .bold))
                .foregroundStyle(Color.white)
                .frame(width: 200, height: 80)
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .ignoresSafeArea()
        .onAppear {
            isAnimating.toggle()
        }
    }
}

#Preview {
    ButtonBorderColorAnimated()
}
