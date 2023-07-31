//
//  ContentView.swift
//  Kings Cup
//
//  Created by Katie Chai on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    @State var card = "hearts_7"
    @State var task = "Heaven"
        
    var body: some View {
        
        ZStack {
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
                
            VStack {
                Spacer()
                Text(task).font(.largeTitle).fontWeight(.bold).foregroundColor(Color.white)
                    .fontDesign(.rounded)
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
            task = "You"
        }
        else if cardVal == 3 {
            task = "Me"
        }
        else if cardVal == 4 {
            task = "Floor"
        }
        else if cardVal == 5 {
            task = "Guys"
        }
        else if cardVal == 6 {
            task = "Chicks"
        }
        else if cardVal == 7 {
            task = "Heaven"
        }
        else if cardVal == 8 {
            task = "Mate"
        }
        else if cardVal == 9 {
            task = "Rhyme"
        }
        else if cardVal == 10 {
            task = "Categories"
        }
        else if cardVal == 11 {
            task = "Never have I ever"
        }
        else if cardVal == 12 {
            task = "Questions"
        }
        else if cardVal == 13 {
            task = "King's cup"
        }
        else {
            task = "Waterfall"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
