//  ContentView.swift
//  War Card Game
//
//  Created by Prajwal U on 20/12/23.
//
import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card7"
    @State var CPUcard = "card11"
    
    @State var playerscore : Int = 0
    @State var CPUscore :  Int = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-cloth")
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(CPUcard)
                    Spacer()
                }
                Spacer()
                
                
                Button(action: { deal()},
                       label: {Image("button")})
                                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerscore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        Text (String(CPUscore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        
        // randomise the players card and cpu card
        var palyercardValue = String(Int.random(in: 2...14))
        playercard = "card" + palyercardValue
        var CPUcardvalue = String(Int.random(in: 2...14))
        CPUcard = "card" + CPUcardvalue
        
        //update the score
        if playercard > CPUcard
        {
            playerscore = playerscore + 1
        }
        else if playercard < CPUcard{
            CPUscore += 1
        }
        else{ CPUscore += 1
            playerscore += 1
        }
    }
}


#Preview {
    ContentView()
}
























