//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Bengi Tunca on 25.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false

    var body: some View {
        if useRedText {
            Button("Hello World") {
                useRedText.toggle()
            }
            .foregroundStyle(.red)
        } else {
            Button("Hello World") {
                useRedText.toggle()
            }
            .foregroundStyle(.blue)
        }
    }
}

#Preview {
    ContentView()
}
