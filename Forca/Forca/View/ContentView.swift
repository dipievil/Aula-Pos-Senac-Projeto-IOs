//
//  ContentView.swift
//  Forca
//
//  Created by IOS SENAC on 06/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
               
        NavigationView{
            
            NavigationLink("Clique para iniciar", destination: Text("Jogo da Forca"))
                .navigationBarTitle("Jogo da Forca", displayMode: .large)
            HStack{
                Text("Tela A")
                    .padding()
            }
            /*
            ScrollView{
                MenuInicialView()
               
                VStack{
                    HStack{
                        Text("Tela 1")
                            .padding()
                    }
                    
                    Spacer()
                    
                    HStack{
                        Text("Tela 2")
                            .padding()
                    }
                }

            }
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
