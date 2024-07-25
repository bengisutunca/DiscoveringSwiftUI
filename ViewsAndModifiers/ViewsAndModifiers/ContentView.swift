//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Bengi Tunca on 25.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        Button("Hello, world!") {
//            // do nothing
//        }
//        .background(.red)
//        .frame(width: 200, height: 200)
        
//        Button("Hello, world!") {
//            print(type(of: self.body))
//        }
//        .background(.red)
//        .frame(width: 200, height: 200)
        
        Text("Hello, world!")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
    }
}

#Preview {
    ContentView()
}
