//
//  RuleView.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1819353794192593027
//  Created by Uri on 2/8/24.
//

import SwiftUI

struct RuleView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(.black.gradient)
                .frame(height: 100)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(.gray.opacity(0.3), lineWidth: 2))
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(1...100, id: \.self) { number in
                        VStack {
                            Text("\(number)")
                                .font(.system(size: 32, weight: .bold, design: .rounded))
                                .foregroundStyle(.white)
                                .padding(.bottom, -8)
                            ZStack {
                                Rectangle()
                                    .fill(.gray)
                                    .frame(width: 2, height: 20)
                                HStack(spacing: 0) {
                                    ForEach(0..<10) { index in
                                        if index > 0 {
                                            Rectangle().fill(.gray)
                                                .frame(width: 1, height: 10)
                                        }
                                        Spacer()
                                    }
                                }
                                .frame(width: 50, height: 10)
                            }
                        }
                        .frame(width: 80)
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
            .padding(.horizontal)
            
            Image(systemName: "triangle.fill")
                .resizable()
                .frame(width: 30, height: 20)
                .rotationEffect(.degrees(180))
                .foregroundStyle(.red)
                .offset(y: -50)
        }
        .padding(.top)
        
        Spacer()
    }
}

#Preview {
    RuleView()
}
