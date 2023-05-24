//
//  ContentView.swift
//  TimerTest
//
//  Created by jpbol on 06/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State var timeRemaining = 5.0
    let fullTime = 5.0
    @State var isTimerActive = false
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            TimerView(timeRemaining: timeRemaining, fullTime: fullTime)
            TimerView(timeRemaining: timeRemaining, fullTime: fullTime)
            TimerView(timeRemaining: timeRemaining, fullTime: fullTime)
            
            .padding()
            HStack {
                Button(isTimerActive ? "Stop" : "Start", action: {isTimerActive.toggle()})
                Button("Restart", role: .destructive, action: {
                    timeRemaining = 5
                })
            }
        }
            

        .onReceive (timer)
        { time in
            guard isTimerActive else {return}
            if timeRemaining > 0
            {
                timeRemaining -= 1
            }
            else {
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
