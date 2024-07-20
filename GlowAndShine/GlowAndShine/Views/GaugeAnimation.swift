//
//  GaugeAnimation.swift
//  GlowAndShine
//  https://x.com/AlbertMoral/status/1814370323372093583
//  Created by Uri on 20/7/24.
//

import SwiftUI

struct GaugeAnimation: View {
    
    @State private var value = 0.5
    
    var body: some View {
        VStack() {
            Spacer()
            GasGauge
            Spacer()
            gasSlider
            Spacer()
        }
    }
}

#Preview {
    GaugeAnimation()
}

extension GaugeAnimation {
    
    private var GasGauge: some View {
        Gauge(value: value) {
            Image(systemName: "fuelpump.fill")
                .foregroundStyle(value < 0.3 ? .orange : .green)
                .font(.headline)
                .symbolEffect(.bounce, value: value < 0.3 ? value : 0.0)
        } currentValueLabel: {
            Text(value, format: .percent.precision(.fractionLength(1)))
                .contentTransition(.numericText())
                .transaction {
                    $0.animation = .default
                }
        }
        .gaugeStyle(.accessoryCircular)
        .tint(.red)
        .scaleEffect(4.0)
        .padding()
    }
    
    private var gasSlider: some View {
        Slider(value: $value) {}
    minimumValueLabel: { Text("0") }
    maximumValueLabel: { Text("100") }
            .padding()
    }
}
