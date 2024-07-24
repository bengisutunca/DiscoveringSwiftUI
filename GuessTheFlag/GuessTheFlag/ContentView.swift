//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Bengi Tunca on 13.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    private enum GradientConstants {
        static let color1Red: Double = 0.1
        static let color1Green: Double = 0.2
        static let color1Blue: Double = 0.45

        static let color2Red: Double = 0.76
        static let color2Green: Double = 0.15
        static let color2Blue: Double = 0.26

        static let location1: CGFloat = 0.3
        static let location2: CGFloat = 0.7

        static let center = UnitPoint.top
        static let startRadius: CGFloat = 200
        static let endRadius: CGFloat = 700
    }

    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "USA"].shuffled()
    
    @State private var correctAnswer: Int = Int.random(in: 0...2)
    @State private var showingScore: Bool = false
    @State private var scoreTitle: String = ""
    @State private var score: Int = 0

    var body: some View {
        ZStack {
            RadialGradient(
                stops: [
                    .init(color: Color(red: GradientConstants.color1Red,
                                       green: GradientConstants.color1Green,
                                       blue: GradientConstants.color1Blue),
                          location: GradientConstants.location1),
                    .init(color: Color(red: GradientConstants.color2Red,
                                       green: GradientConstants.color2Green,
                                       blue: GradientConstants.color2Blue),
                          location: GradientConstants.location2)
                ],
                center: GradientConstants.center,
                startRadius: GradientConstants.startRadius,
                endRadius: GradientConstants.endRadius
            )
            .ignoresSafeArea()

            VStack {
                Spacer()

                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)

                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))

                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }

                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .resizable() // Ensure images resize properly
                                .scaledToFit()
                                .frame(width: 100, height: 60)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))

                Spacer()
                
                Text("Score: \(score)")
                    .foregroundStyle(.white)
                    .font(.title.bold())

                Spacer()
            }
            .padding()
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score is \(score)")
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong! That's the flag of \(countries[number])."
        }

        showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}
