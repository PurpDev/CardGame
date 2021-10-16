//
//  ContentView.swift
//  CardGame
//
//  Created by Augustin Diabira on 13/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card"
    @State var cpuCard = "card"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
                   
        ZStack{
           
            Image("background").ignoresSafeArea(.all)
            
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
                Button(action: {
                    
                    //Generate random number
                    let playerRand = Int.random(in:  2...14)
                    let cpuRand = Int.random(in:  2...14)
                    
                    //Update card
                    
                    playerCard = "card" +
                    String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update Score
                    if playerRand < cpuRand {
                        cpuScore += 1
                    }else if cpuRand == playerRand {
                        playerScore += 0
                        cpuScore += 0
                    }else {
                        playerScore += 1
                    }
                    
                    
                    
                    
                }, label: {
                    Image("dealbutton")
                                })
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
        
   
            
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
