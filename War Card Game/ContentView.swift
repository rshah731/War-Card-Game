//
//  ContentView.swift
//  War Card Game
//
//  Created by Rani Shah on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                        Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                            }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                
                Spacer()
                HStack{
                    Spacer()
                                VStack{
                                    Text("Player")
                                        .font(.headline)
                                        .padding(.bottom, 10.0)
                                        
                                    Text(String(playerScore))
                                        .font(.largeTitle)
                                }
                    Spacer()
                                VStack{
                                    Text("CPU")
                                        .font(.headline)
                                        .padding(.bottom, 10.0)
                                    Text(String(cpuScore))
                                        .font(.largeTitle)
                                }
                    Spacer()
                            }
                Spacer()
                    }
            .foregroundColor(.white)
        }
        
        
    }
    
    func deal()
    {

        // Randomize the player card.
        var rand1 = Int.random(in: 2...14)
        playerCard = "card" + String(rand1)
        
        // Randomize the CPU card.
        var rand2 = Int.random(in: 2...14)
        cpuCard = "card" + String(rand2)
        // Update the scores
        if rand1 > rand2
        {
            playerScore += 1
        }
        else if rand2 > rand1
        {
            cpuScore += 1
        }
        
    }
    
}

#Preview {
    ContentView()
}
