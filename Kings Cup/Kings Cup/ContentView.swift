//
//  ContentView.swift
//  Kings Cup
//
//  Created by Katie Chai on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var card = "hearts_7"
        
    var body: some View {
        
        ZStack {
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
                Spacer()
                Image(card)
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
            }
        }
    }
        
    func deal(){
        // Randomize the card
        var cardSuit = Int.random(in:1...4)
        var cardVal = Int.random(in:2...14)
        
        if cardSuit == 1 {
            card = "hearts_" + String(cardVal)
        }
        else if cardSuit == 2 {
            card = "clubs_" + String(cardVal)
        }
        else if cardSuit == 3 {
            card = "diamonds_" + String(cardVal)
        }
        else {
            card = "spades_" + String(cardVal)
        }
        
        // Print rule
        if cardVal == 2 {
            print("You")
        }
        else if cardVal == 3 {
            print("Me")
        }
        else if cardVal == 4 {
            print("Floor")
        }
        else if cardVal == 5 {
            print("Guys")
        }
        else if cardVal == 6 {
            print("Chicks")
        }
        else if cardVal == 7 {
            print("Heaven")
        }
        else if cardVal == 8 {
            print("Mate")
        }
        else if cardVal == 9 {
            print("Rhyme")
        }
        else if cardVal == 10 {
            print("Categories")
        }
        else if cardVal == 11 {
            print("Never have I ever")
        }
        else if cardVal == 12 {
            print("Questions")
        }
        else if cardVal == 13 {
            print("King's cup")
        }
        else {
            print("Waterfall")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
