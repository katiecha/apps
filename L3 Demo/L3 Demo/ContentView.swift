//
//  ContentView.swift
//  L3 Demo
//
//  Created by Katie Chai on 7/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemCyan)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("bibimbap")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack {
                    Text("Bibimbap")
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                }
                
                Text("Mixed rice with meat and assorted vegetables.")
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding()
            .background(Rectangle().foregroundColor(.white))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
