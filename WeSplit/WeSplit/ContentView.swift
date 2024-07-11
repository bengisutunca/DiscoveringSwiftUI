//
//  ContentView.swift
//  WeSplit
//
//  Created by Bengi Tunca on 7.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Constants
    
    private enum Constants {
        
        static let screenTitle = "WeSplit"
        static let amountText = "Amount"
        static let people = "Number of People"
        static let tipPercentage = "Tip Percentage"
        static let checkAmount = "Total Check Amount"
        static let percentageQuestion = "How much percentage do you tip?"
        static let amountPerPerson = "Amount Per Person"
        static let currency = Locale.current.identifier
    }
    
    // MARK: - Variables
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocused: Bool
    
    var tipAmount: Double {
        return checkAmount * Double(tipPercentage) / 100
    }
    
    var totalCheckAmount: Double {
        return checkAmount + tipAmount
    }
    
    var totalPerPerson: Double {
        totalCheckAmount / Double(numberOfPeople)
    }
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField(Constants.amountText, value: $checkAmount, format: .currency(code: Constants.currency))
                        .keyboardType(.numberPad)
                        .focused($amountIsFocused)
                    
                    Picker(Constants.people, selection: $numberOfPeople) {
                        ForEach(0 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section(header: Text(Constants.percentageQuestion)) {
                    Picker(Constants.tipPercentage, selection: $tipPercentage) {
                        ForEach(0..<101, id: \.self) { value in
                            Text(value, format: .percent)
                        }
                    }
                }
                
                Section(header: Text(Constants.checkAmount)) {
                    Text(totalCheckAmount, format: .currency(code: Constants.currency))
                        .foregroundColor(tipPercentage == 0 ? .red : .black)
                }
                
                Section(header: Text(Constants.amountPerPerson)) {
                    Text(totalPerPerson, format: .currency(code: Constants.currency))
                }
            }
            
            .navigationTitle(Constants.screenTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
