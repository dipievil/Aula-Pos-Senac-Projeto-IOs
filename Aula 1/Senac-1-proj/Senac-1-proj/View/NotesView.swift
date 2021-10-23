//
//  ContentView.swift
//  Senac-1-proj
//
//  Created by IOS SENAC on 23/10/21.
//

import SwiftUI

struct NoteView: View {
    
    var note: Note
    
    var interations: Int {
        return note.formattings.count + 1
    }
    
    var divisoesString: [String] {
        
        if note.formattings.isEmpty {
            return [note.content]
        } else if note.formattings.count == 1 {
            let currentPosition = note.formattings[0].position
            let startIndex = note.content.index(note.content.startIndex, offsetBy: currentPosition)
            let lastIndex = note.content.endIndex
            let substring = note.content[startIndex..<lastIndex]
            return [String(substring), ""]
        } else{
            var container: [String] = []
            var lastPosition = note.formattings[0].position

            for i in 1..<note.formattings.count {

                let currentPosition = note.formattings[i].position
                let startIndex = note.content.index(note.content.startIndex, offsetBy: lastPosition)
                let lastIndex = note.content.index(note.content.startIndex, offsetBy: currentPosition)
                let substring = note.content[startIndex...lastIndex]
                container.append(String(substring))
                lastPosition = currentPosition
            }

            return container
        }
        
    }
    
    var body: some View {
        
        VStack(){
            ForEach(0..<interations){ index in
                HStack{
                    if note.formattings.count != 0 && note.formattings.count > index {
                        if note.formattings[0].tipo == .bullet{
                            Circle()
                                .foregroundColor(.black)
                                .frame(width: 10, height: 10)
                        }
                    }                    
                    Text(divisoesString[index])
                        .font(.system(size: 24))
                    Spacer()
                }
            }
        }.padding()        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(note: Note(title: "Exemplo", content: "Conteudo"))
    }
}



