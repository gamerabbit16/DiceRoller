//
//  Diceview.swift
//  DiceRoller
//
//  Created by Paul Jorda on 01/01/2025.
//

import SwiftUI

struct Diceview: View {
    @State private var numberOfPips: Int = 1
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
                .aspectRatio(1, contentMode: .fit)
                .padding()
            Text("\(numberOfPips) Pips")
                .font(.title2)
                .padding(9)
                .multilineTextAlignment(.center)
                .background(Color.gray, in: RoundedRectangle(cornerRadius: 7))
                .padding()
            Button("Roll"){
                withAnimation{
                    numberOfPips = Int.random(in: 1...6)
                }
            }
            .buttonStyle(.bordered)
            .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    Diceview()
}
