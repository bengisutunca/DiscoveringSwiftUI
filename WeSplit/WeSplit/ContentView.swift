//
//  ContentView.swift
//  WeSplit
//
//  Created by Bengi Tunca on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
