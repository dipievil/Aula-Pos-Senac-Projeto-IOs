//
//  Mensagem.swift
//  senac-3-projeto
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import Foundation

struct Mensagem: Identifiable {
    
    var id = UUID()
    
    var conteudo: String
    
    var hora: Date
    
    var destinatario: Usuario
    var remetente: Usuario
    
    enum Status: String {
        case criado = "CRIADO"
        case enviado = "ENVIADO"
        case recebido = "RECEBIDO"
        case lido = "LIDO"
    }
    var status: Status
}
