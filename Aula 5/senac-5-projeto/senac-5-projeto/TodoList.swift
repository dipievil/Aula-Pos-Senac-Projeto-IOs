//
//  TodoList.swift
//  senac-5-projeto
//
//  Created by IOS SENAC on 06/11/21.
//

import Foundation

struct TodoList{
    var items: [Item]
}

extension TodoList{
    
    init(item: Item){
        self.items = [item]
    }
    
    mutating func add(item: Item){
        items.append(item)
    }
    
    mutating func remove(item: Item){
        let index = items.firstIndex(of: item)!
        items.remove(at: index)
    }
}

struct Item : Equatable{
    var name: String
    var checked: Bool = false
}
