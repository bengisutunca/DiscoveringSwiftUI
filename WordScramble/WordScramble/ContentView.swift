//
//  ContentView.swift
//  WordScramble
//
//  Created by Bengi Tunca on 20.02.2025.
//

import SwiftUI

struct ContentView: View {
    let people = ["Finn", "Leia", "Luke", "Rey"]
    
    var body: some View {
        
        List {
            Text("Hello World")
            Text("Hello World")
            Text("Hello World")
        }
        
        List {
            ForEach(0..<5) {
                Text("Dynamic row \($0)")
            }
        }
        
        List {
            Text("Static row 1")
            Text("Static row 2")
            
            ForEach(0..<5) {
                Text("Dynamic row \($0)")
            }
            
            Text("Static row 3")
            Text("Static row 4")
        }.listStyle(.grouped)
        
        List {
            Text("Static Row")
            ForEach(people, id: \.self) {
                Text($0)
            }
            Text("Static Row")
        }.listStyle(.inset)
    }
}

#Preview {
    ContentView()
}
