//
//  ContentView.swift
//  BetterRest
//
//  Created by Bengi Tunca on 18.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0

    var body: some View {
//        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12)
//        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
    }
}

#Preview {
    ContentView()
}
