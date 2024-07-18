//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Bengi Tunca on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Button 1") { }
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.bordered)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent).tint(.mint)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            Button {
                print("Button tapped.")
            } label: {
                Text("Button 5")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            Button {
                print("Edit button was tapped!")
            } label: {
                Label("Button 6", systemImage: "book")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.pink)
            }
            Button {
                print("Edit button was tapped.")
            } label: {
                Image(systemName: "pencil")
            }
        }
    }
}

#Preview {
    ContentView()
}
