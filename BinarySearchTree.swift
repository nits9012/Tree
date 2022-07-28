//
//  BinarySearchTree.swift
//  TestingUIKit
//
//  Created by Nitin Bhatt on 7/28/22.
//

import Foundation


//               50
//             /     \
//            40      60
//           /  \    /  \
//          20  45  55  70

class BinarySearchTreeNode{
    var value:Int?
    var leftChild:BinarySearchTreeNode?
    var rightChild:BinarySearchTreeNode?
    
    init(value:Int?,leftChild:BinarySearchTreeNode?,rightChild:BinarySearchTreeNode?){
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

class BinarySearchTree{
    
    let searchValue = 45
    
    func dummyData(){
        let twenty = BinarySearchTreeNode(value: 20, leftChild: nil, rightChild: nil)
        let fourtyFive = BinarySearchTreeNode(value: 45, leftChild: nil, rightChild: nil)
        let fourty = BinarySearchTreeNode(value: 45, leftChild: twenty, rightChild: fourtyFive)

        let fiftyFive = BinarySearchTreeNode(value: 55, leftChild: nil, rightChild: nil)
        let seventy = BinarySearchTreeNode(value: 70, leftChild: nil, rightChild: nil)
        let sixty = BinarySearchTreeNode(value: 60, leftChild: fiftyFive, rightChild: seventy)

        let fifty = BinarySearchTreeNode(value: 50, leftChild: fourty, rightChild: sixty)
        
        print("----------Search Value Binary Serach Tree------------------")
        self.search(node: fifty, key: searchValue)
        

    }
    
    func search(node:BinarySearchTreeNode?,key:Int){
        if node == nil{
            print("Value does not exist in tree")
            return
        }
        
        if node?.value == key{
            print("Value found")
        }else if let value = node?.value, value < key{
            search(node: node?.rightChild, key: key)
        }else{
            search(node: node?.leftChild, key: key)
        }
    }

}
