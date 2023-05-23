//
//  ContentView-ViewModel.swift
//  TimerTest
//
//  Created by jpbol on 11/05/2023.
//

import Foundation
import SwiftUI

extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var isTimeup = Bool()
    }
}
