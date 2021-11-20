//
//  LettersView.swift
//  Forca
//
//  Created by IOS SENAC on 20/11/21.
//

import SwiftUI

struct LettersView: View {
    
    @State var puzzle : Puzzle?
    
    @State var guessed : String = ""
    
    @State var wrongLetters : String = ""
    
    @State var lettersToGuess : [String] = []
    
    var dollWidth : CGFloat
    
    var body: some View {
        
        VStack{
            
            HStack(spacing: 5){
                VStack{
                    Text("Área do Boneco")
                }.frame(width: dollWidth, height: 500.0, alignment: .leading)
                .border(Color.red)
                Spacer()
                
                VStack(alignment: .center){
                    
                    ForEach(lettersToGuess, id: \.self) { letter in
                         Button(action: {
                             Useletter(letter: letter)
                             print()
                         }, label: {
                             Text(letter).font(.title)
                         })
                    }
                    
                    Text("Letras")
                        .multilineTextAlignment(.center)
                }
                VStack{
                    Text(guessed)
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
    
    //Check if the character is in the word
    func Useletter(letter : String){
        if puzzle!.word.uppercased().contains(letter.uppercased()) == false{
            wrongLetters = wrongLetters + letter
        } else {
            
            let range: Range<String.Index> = puzzle!.word.range(of: letter)!
            let pos: Int = puzzle!.word.distance(from: puzzle!.word.startIndex, to: range.lowerBound)
        }
    }
    
    //Set or change the word to guess
    func SetGuessed(letter : String? = nil){
        if letter == nil{
            
        }
    }
    
    //Return list of characters to choose
    //func setLettersToGuess() -> [String]{
     //   var  characters = Array(puzzle!.word)
        
     //   let alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","X","Z"]
        
      //  var nchars = 0
        
     //   while nchars < (puzzle!.word.count + 5) {
     //       characters.append(contentsOf: alphabet[0])
     //       nchars = nchars + 1
     //   }
        
    //    return characters
    //}
    
}

struct LettersView_Previews: PreviewProvider {
    static var previews: some View {
        LettersView( dollWidth: CGFloat(500))
    }
}
