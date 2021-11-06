//
//  senac_4_projetoTests.swift
//  senac-4-projetoTests
//
//  Created by Nicolas Nascimento on 30/10/21.
//

import XCTest
@testable import senac_4_projeto

class senac_4_projetoTests: XCTestCase {
    
    func testAppStateInit() {
        
        let appState = AppState()
        
        XCTAssert(appState.background == .black)
        XCTAssert(appState.label == "Ligar")
    }
    
    func testAppStateFromBlackToWhite() {
        
        var appState = AppState()
        
        appState.switchState()
        
        XCTAssert(appState.background == .white)
        XCTAssert(appState.label == "Carregar")
        
    }
    
    func testAppStateFromWhiteToYellow() {
        var appState = AppState(background: .white)
        
        appState.switchState()
        
        XCTAssert(appState.background == .yellow)
        XCTAssert(appState.label == "Desligar")
    }
    
    
    func testAppStateFromYellowToBlack() {
        var appState = AppState(background: .yellow)
        
        appState.switchState()
        
        XCTAssert(appState.background == .black)
        XCTAssert(appState.label == "Ligar")
    }
    
}
