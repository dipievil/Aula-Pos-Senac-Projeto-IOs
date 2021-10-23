//
//  NotesView.swift
//  Senac-1-proj
//
//  Created by IOS SENAC on 23/10/21.
//

import SwiftUI

struct NotessView: View {
   
    
    @State var container: ContainerNotes = ContainerNotes()
        
    var body: some View {
        
        NavigationView{
            List(container.notes){ note in
                
                NavigationLink(destination: NotesView(note: note)){
                    Text("Nota \(note.title)")
                        .font(.system(size:24))
                }
            }
            .navigationTitle("Minhas Notas")
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotessView()
    }
}
