//
//  ContentView.swift
//  L1 Demo
//
//  Created by Katie Chai on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Image("solo-cup")
                    .resizable().aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Kings Cup")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
