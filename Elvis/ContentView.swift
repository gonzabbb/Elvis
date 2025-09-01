//
//  ContentView.swift
//  Elvis
//
//  Created by Abraham Gonzalez on 9/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var  message = ""
    @State private var image = ""
    
    var body: some View {
        
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(Color.purple)
            
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
           
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(Color.purple)
            
            Spacer()
            
            HStack{
                Button("Peace") {
                    message = "Peace"
                    image = "peacesign"
                }
                
                
                Button("Love") {
                    message = "Love"
                    image = "heart"
                }
                
                Button("Understanding") {
                    message = "understanding"
                    image = "lightbulb"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}
