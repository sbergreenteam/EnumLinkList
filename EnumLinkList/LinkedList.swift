//
//  LinkedList.swift
//  EnumLinkList
//
//  Created by Максим Вильданов on 28.10.2019.
//  Copyright © 2019 Максим Вильданов. All rights reserved.
//

import Foundation

indirect enum LinkedList<T> {
    case end
    case node(value: T, next: LinkedList<T>)
}

extension LinkedList {
    
    mutating func push(item: T) {
        self = .node(value: item, next: self)
    }
    
    mutating func pop() {
        switch self {
        case let .node(_, next):
            self = next

        case .end:
            return 
        }
    }
    
    
}




