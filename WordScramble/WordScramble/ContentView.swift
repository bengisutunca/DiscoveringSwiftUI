//
//  ContentView.swift
//  WordScramble
//
//  Created by Bengi Tunca on 20.02.2025.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello World!")
        }
        .padding()
    }
    
    func testBundles() {
        if let fileURL = Bundle.main.url(forResource: "some file", withExtension: "txt") {
            /// found the file in the bundle.
            if let fileContents = try? String(contentsOf: fileURL) {
                /// loaded the file into string.
            }
        }
    }
}

#Preview {
    ContentView()
}
