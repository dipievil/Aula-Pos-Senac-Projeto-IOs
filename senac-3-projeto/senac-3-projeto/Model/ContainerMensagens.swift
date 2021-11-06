//
//  ContainerMensagens.swift
//  senac-3-projeto
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import Foundation

struct ContainerMensagens {
    
    var mensagens: [Mensagem] = [
        Mensagem(
            conteudo: "Oi",
            hora: Date(),
            destinatario: ContainerUsuarios.usuarios.first!,
            remetente: ContainerUsuarios.usuarios.last!,
            status: .lido
        ),
        Mensagem(
            conteudo: "Oi, tudo bem?",
            hora: Date().addingTimeInterval(120),
            destinatario: ContainerUsuarios.usuarios.last!,
            remetente: ContainerUsuarios.usuarios.first!,
            status: .lido
        ),
        Mensagem(
            conteudo: "Vai ir para a aula de hoje?",
            hora: Date().addingTimeInterval(120*2),
            destinatario: ContainerUsuarios.usuarios.first!,
            remetente: ContainerUsuarios.usuarios.last!,
            status: .recebido
        ),
        Mensagem(
            conteudo: "Estou meio doente dai não sei se vou",
            hora: Date().addingTimeInterval(120*3),
            destinatario: ContainerUsuarios.usuarios.first!,
            remetente: ContainerUsuarios.usuarios.last!,
            status: .enviado
        ),
        Mensagem(
            conteudo: "O que você acha?",
            hora: Date().addingTimeInterval(120*4),
            destinatario: ContainerUsuarios.usuarios.first!,
            remetente: ContainerUsuarios.usuarios.last!,
            status: .criado
        ),
    ]
}
