//
//  senac_5_projetoTests.swift
//  senac-5-projetoTests
//
//  Created by IOS SENAC on 06/11/21.
//

import XCTest
@testable import senac_5_projeto


// AS A         User
// I WANT TO    Add a to-do item
// SO THAT I    Can register my activities

// AS A         User
// I WANT TO    Delete an item
// SO THAT I    Can remove an activity

class senac_5_projetoTests: XCTestCase {

    func testRemoveItemFromList(){
        // GIVEN    My list has 1 item
        var list = TodoList(item: Item(name: "Estudar", checked: true))
        
        // WHEN     I remove a item named "Estudar"
        
        list.remove(item: Item(name: "Estudar"))
        
        // THEN     It should be removed from the list
        XCTAssert(list.items.last!.name == "Estudar")
    }
    
    
    func testAddingOneItemInListWithOneItemAlready(){
        
        // GIVEN    My list has 1 item
        // AND      The item is checked
        // AND      The item is named "Fazer academia"
        var list = TodoList(item: Item(name: "Fazer Academia", checked: true))
        
        // WHEN     I add a to-do item named "Estudar"
        list.add(item: Item(name: "Estudar"))
        
        // THEN     It should be at the end of the list
        XCTAssert(list.items.last!.name == "Estudar")
        
        // AND      It should be unchecked
        XCTAssert(list.items.last!.checked == false)
    }
}
