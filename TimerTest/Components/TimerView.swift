//
//  TimerView.swift
//  TimerTest
//
//  Created by jpbol on 24/05/2023.
//

import Foundation
import SwiftUI

struct TimerView: View {
    var timeRemaining: Double
    let fullTime: Double
    
    init(timeRemaining: Double, fullTime: Double) {
        self.timeRemaining = timeRemaining
        self.fullTime = fullTime
    }
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.3), style: StrokeStyle(lineWidth: 10, lineCap: .round))
            Circle()
                .trim(from: 0, to: CGFloat(timeRemaining/fullTime))
                .stroke(Color.red, style: StrokeStyle(lineWidth: 10, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.default, value: timeRemaining)
            Text(String(format: "%.0f", timeRemaining))
                .font(.largeTitle)
        }
    }
}
