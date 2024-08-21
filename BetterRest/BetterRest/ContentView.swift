//
//  ContentView.swift
//  BetterRest
//
//  Created by Bengi Tunca on 18.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now

    var body: some View {
        DatePicker("Please enter a date", selection: $wakeUp)
        DatePicker("", selection: $wakeUp)
        DatePicker("Please enter a date", selection: $wakeUp)
            .labelsHidden()
        DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
    }
}

#Preview {
    ContentView()
}
