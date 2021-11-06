//
//  ContentView.swift
//  senac-3-projeto
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var mensagens = ContainerMensagens().mensagens
    
    @State var messageBlock: String = ""
    @State var lastUser: String = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            
            ForEach(mensagens) { mensagem in
                
                if lastUser != mensagem.remetente.nome  {
                    MensagemView(
                        usuario: mensagem.remetente.nome.contains("Nicolas") ? nil : mensagem.remetente,
                        conteudo: mensagem.conteudo,
                        hora: dateToString(date: mensagem.hora),
                        status: mensagem.status.rawValue
                    )
                } else {
                    setMessage(stringToAttach: mensagem.conteudo)
                }
                               
              
            }
        }.padding()
    }
    
    func dateToString(date: Date) -> String {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "hh mm a"
        return formatter.string(from: date)
    }
    
    func setMessage(stringToAttach: String) -> String{
        return messageBlock + stringToAttach
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
