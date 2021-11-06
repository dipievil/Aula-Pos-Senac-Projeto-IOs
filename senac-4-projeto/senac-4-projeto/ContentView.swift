//
//  ContentView.swift
//  senac-4-projeto
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var appState: AppState = AppState()
    
    var body: some View {
        
        ZStack {
                        
            switch appState.background {
                case .black:
                    Color.black
                case .white:
                    Color.white
                case .yellow:
                    Color.yellow
            }
            
            Text(appState.label)
                .foregroundColor(appState.background == .black ? .white : .black)
                .padding()
                .onTapGesture {
                    appState.switchState()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
