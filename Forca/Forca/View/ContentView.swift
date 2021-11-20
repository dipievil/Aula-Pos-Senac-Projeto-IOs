//
//  ContentView.swift
//  Forca
//
//  Created by Dipi on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var pontuacao: Int = 0
    
    @State var puzzle: Puzzle = ContainerPuzzles().puzzles[0]
    
    var body: some View {
    
        ZStack {
            VStack(spacing: 10){
                HStack{
                    VStack{
                        Text("Jogo da Forca")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text("Pontuação " + String(pontuacao))
                    }
                }
                Spacer()
                LettersView(puzzle: puzzle, dollWidth: UIScreen.main.bounds.width/2)
                
            }
        }
    }
        
    func setActualWord() -> Puzzle{
        let rndWord = Int.random(in: 0..<(ContainerPuzzles().puzzles.count+1))	
        return ContainerPuzzles().puzzles[rndWord]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
