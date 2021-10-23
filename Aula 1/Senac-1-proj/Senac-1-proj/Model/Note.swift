//
//  Nota.swift
//  Senac-1-proj
//
//  Created by IOS SENAC on 23/10/21.
//

import Foundation

struct Note: Identifiable {
    
    var id: UUID = UUID()
    
    var title: String
    
    var content: String
    
    var formattings: [Formatting] = []
    
}

struct Formatting {
    
    var position: Int
    
    enum FontType{
        case bold
        case bullet
    }
    
    var tipo: FontType = .bullet
}
