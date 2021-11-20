//
//  LettersView.swift
//  Forca
//
//  Created by IOS SENAC on 20/11/21.
//

import SwiftUI

struct LettersView: View {
    
    @State var puzzle : Puzzle?
    
    @State var wrongLetters : String = ""
    
    var dollWidth : CGFloat
    
    var body: some View {
                
        let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","X","Z"]
        
        VStack{
            
            HStack(spacing: 5){
                VStack{
                    Text("Área do Boneco")
                }.frame(width: dollWidth, height: 500.0, alignment: .leading)
                .border(Color.red)
                Spacer()
                HStack(alignment: .center){
                    
                    ForEach(alphabet, id: \.self) { letter in
                         Button(action: {
                             Useletter(letter: "A")
                             print()
                         }, label: {
                             Text("A").font(.title)
                         })
                    }
                    
                    Text("Letras")
                        .multilineTextAlignment(.center)
                }
                HStack{
                    Text(puzzle!.word)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                }
            }
            HStack{
                VStack{
                    HStack{
                        Text("Dica")
                            .font(.caption)
                            .italic()
                    }
                    Spacer()
                    HStack{
                        Text(wrongLetters)
                            .strikethrough()
                    }
                    Spacer()
                    
                }
                
            }.border(Color.blue)
        }
    }
    
    func Useletter(letter : String){
        if puzzle!.word.uppercased().contains(letter.uppercased()) == false{
            wrongLetters = wrongLetters + letter
        }
    
    }
}

struct LettersView_Previews: PreviewProvider {
    static var previews: some View {
        LettersView( dollWidth: CGFloat(500))
    }
}
