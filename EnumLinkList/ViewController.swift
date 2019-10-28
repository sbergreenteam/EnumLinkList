//
//  ViewController.swift
//  EnumLinkList
//
//  Created by Максим Вильданов on 28.10.2019.
//  Copyright © 2019 Максим Вильданов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate func getListData() {
        var currentNode = LinkedList.node(value: "1", next: .end)
        currentNode.push(item: "2")
        currentNode.push(item: "3")
        currentNode.push(item: "4") // 4 3 2 1
        currentNode.pop() // 3 2 1
        
        listLoop: while true {
            
            switch currentNode {
            case .end:
                break listLoop
            case .node(let value, let next):
                listOutlet.text! += String(value) + " "
                currentNode = next
            }
        }
    }
    
    @IBOutlet weak var listOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getListData()

    }

    

}

