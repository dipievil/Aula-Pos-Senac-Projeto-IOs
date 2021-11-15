//
//  ContentView.swift
//  Forca
//
//  Created by Dipi on 15/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{ geo in
            ZStack {
                VStack(spacing: 10){
                    HStack{
                        Text("Jogo da Forca")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    HStack(spacing: 5){
                        VStack{
                            Text("Área do Boneco")
                        }.frame(width: (UIScreen.main.bounds.width/2), height: 500.0, alignment: .leading)
                        .border(Color.red)
                        Spacer()
                        VStack{
                            HStack(alignment: .center){
                                Text("Letras")
                                    .multilineTextAlignment(.center)
                            }
                            HStack{
                                Text("Palavra")
                                    .fontWeight(.light)
                                    .multilineTextAlignment(.center)
                                    .font(.title2)
                            }
                        }
                    }
                    HStack{
                        VStack{
                            HStack{
                                Text("Chutes")
                            }
                            HStack{
                                Text("Dica")
                                    .font(.caption)
                            }
                        }
                        
                    }.border(Color.blue)

                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
