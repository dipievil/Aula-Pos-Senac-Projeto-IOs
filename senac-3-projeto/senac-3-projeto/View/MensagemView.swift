//
//  MensagemView.swift
//  senac-3-projeto
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import SwiftUI

struct MensagemView: View {
    
    var usuario: Usuario?
    var conteudo: String
    
    var hora: String
    var status: String
    
    var body: some View {
        HStack {
            
            if usuario == nil {
                
                Spacer(minLength: 50)
            }
            

            VStack(alignment: .leading) {
                
                if usuario != nil {
                    HStack {
                        
                        Text(usuario!.numero)
                            .foregroundColor(.blue)
                        
                        Text(usuario!.nome)
                            .foregroundColor(.white)
                            .opacity(0.4)
                        
                    }
                    .font(.system(size: 10))
                }
                
                Text(conteudo)
                
                
                HStack {
                    
                    HStack {
                        Text(hora)
                        
                        Text(status)
                    }
                    .font(.system(size: 10))
                }
            }
            .foregroundColor(.white)
            .padding(8)
            .background(usuario == nil ? Color.green : Color.gray)
            .cornerRadius(12)
            
            if usuario != nil {
                
                Spacer(minLength: 50)
            }
        }
    }
}

//struct Mensagem_Previews: PreviewProvider {
//    static var previews: some View {
//        MensagemView()
//    }
//}
