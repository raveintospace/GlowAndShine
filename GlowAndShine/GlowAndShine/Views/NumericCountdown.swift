//
//  NumericCountdown.swift
//  GlowAndShine
//
//  Created by Uri on 29/9/24.
//

import SwiftUI
import Combine
import SwiftfulRouting

struct NumericCountdown: View {
    
    @Environment(\.router) private var router
    
    @State private var timeRemaining = 60
    @State private var timerSubscription: Cancellable?
    @State private var isTimmerRunning = false
    
    var body: some View {
        VStack {
            Text("\(timeRemaining)")
                .font(.system(size: 80))
                .contentTransition(.numericText())
                .transaction { transaction in
                    transaction.animation = .default
                }
            
            countDownButtons
        }
        .padding()
        
        RedXMarkButton()
            .onTapGesture {
                router.dismissScreen()
            }
    }
}

#Preview {
    RouterView { _ in
        NumericCountdown()
    }
}

extension NumericCountdown {
    
    private var countDownButtons: some View {
        HStack {
            Button(action: {
                if isTimmerRunning {
                    stopTimer()
                } else {
                    startTimer()
                }
                isTimmerRunning.toggle()
            }) {
                Text(isTimmerRunning ? "Stop" : "Start")
                    .font(.title)
                    .padding()
                    .background(isTimmerRunning ? .red : .green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                resetTimer()
            }) {
                Text("Reset")
                    .font(.title)
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(timeRemaining == 60)
            .opacity(timeRemaining == 60 ? 0.3 : 1)
        }
    }
    
    private func startTimer() {
        if timeRemaining > 0 {
            timerSubscription = Timer.publish(every: 1, on: .main, in: .common)
                .autoconnect()
                .sink { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    } else {
                        stopTimer()
                    }
                }
        }
    }
    
    private func stopTimer() {
        timerSubscription?.cancel()
        timerSubscription = nil
    }
    
    private func resetTimer() {
        stopTimer()
        timeRemaining = 60
    }
}
