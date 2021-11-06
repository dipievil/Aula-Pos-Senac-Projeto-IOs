//
//  AppState.swift
//  senac-4-projeto
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import Foundation

struct AppState {
    
    var label: String {
        switch background {
        case .black: return "Ligar"
        case .white: return "Desligar"
        case .yellow: return "Carregar"
        }
    }
    
    enum Color {
        case black
        case white
        case yellow
    }
    var background: Color = .black
    
    mutating func switchState() {
        
        switch background {
            case .black:
                background = .white
            case .white:
                background = .yellow
            case .yellow:
                background = .black
        }
    }
}
