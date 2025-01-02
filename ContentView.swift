//
//  ContentView.swift
//  DiceRoller
//
//  Created by Paul Jorda on 01/01/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    @State private var numberOfDiceline: Int = 0
    var body: some View {
        VStack {
//            Spacer()
            Text("Dice Roller")
                .font(.system(size: 60).lowercaseSmallCaps())
                .frame(alignment: .top)
            Spacer()
            HStack{
                ForEach(1...numberOfDice, id: \.description) { _ in
                        Diceview()
                    }
            }
            Spacer()
            HStack{
                
                Button("Remove a Dice", systemImage: "minus.circle.fill"){
                    withAnimation{
                        numberOfDice -= 1
                    }
                }
                .buttonStyle(.bordered)
                .font(.system(size: 40))
                .foregroundStyle(Color.black)
                .disabled(numberOfDice == 1)
                
                Button("Add  Dice", systemImage:  "plus.circle.fill"){
                    withAnimation{                    numberOfDice += 1
                    }
                }
                .buttonStyle(.bordered)
                .font(.system(size: 40))
                .foregroundStyle(Color.black)
                .padding()
                .disabled(numberOfDice == 3)
            }
            .padding()
            .labelStyle(.iconOnly)
           // if numberOfDice > 6 { //addind +1 when numberOfDice is more than 6
             //   numberOfDiceline + 1
            //} // or just somehow add the dice on a new line verticly instead of assing them infinitly horizontly
            
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
