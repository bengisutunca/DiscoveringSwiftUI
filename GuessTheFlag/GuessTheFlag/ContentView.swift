//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Bengi Tunca on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Text("Your content - 1")
        }
        
        ZStack {
            Text("Your content - 2")
        }
        .background(.pink)
        
        ZStack {
            Text("Your content -3")
                .background(.blue)
        }
        
        ZStack {
            Color.red
            Text("Your content - 4")
        }
        
        Color.yellow
            .frame(width: 200, height: 200)
        
        Color.gray
            .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
        
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }

            Text("Your content - 5")
                .foregroundStyle(.secondary)
                .padding(10)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
