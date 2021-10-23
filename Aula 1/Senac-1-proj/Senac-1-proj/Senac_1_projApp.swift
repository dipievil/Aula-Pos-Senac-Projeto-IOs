//
//  Senac_1_projApp.swift
//  Senac-1-proj
//
//  Created by IOS SENAC on 23/10/21.
//

import SwiftUI

@main
struct Senac_1_projApp: App {
    var body: some Scene {
        WindowGroup {
            NoteView(note: Note(title: "Nota", content: "Conteúdo"))
        }
    }
}
