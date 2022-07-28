//
//  BinaryTree.swift
//  TestingUIKit
//
//  Created by Nitin Bhatt on 7/28/22.
//

import Foundation

//      1
//     / \
//    2   3
//   / \
//  5   6

class BinaryTreeNode{
    var value:Int
    var leftChild:BinaryTreeNode?
    var rightChild:BinaryTreeNode?
    
    init(value:Int,leftChild:BinaryTreeNode?,rightChild:BinaryTreeNode?){
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
}

class BinaryTree{
    
    //var parentNode:BinaryTreeNode?
    
    func dummyData(){
        let fifthNode = BinaryTreeNode(value: 5, leftChild: nil, rightChild: nil)
        let sixthNode = BinaryTreeNode(value: 6, leftChild: nil, rightChild: nil)
        let secondNode = BinaryTreeNode(value: 2, leftChild: fifthNode, rightChild: sixthNode)
        let thirdNode = BinaryTreeNode(value: 3, leftChild: nil, rightChild: nil)
        let firstNode = BinaryTreeNode(value: 1, leftChild: secondNode, rightChild: thirdNode)
        
        print("----------PREORDER------------------")
        self.preorderTraversal(root: firstNode)
        
        print("----------POSTORDER------------------")
        self.postorderTraversal(root: firstNode)
        
        print("----------INORDER------------------")
        self.inOrderTraversal(root: firstNode)

    }
    
    
    func preorderTraversal(root:BinaryTreeNode?){
        if(root != nil){
            print("Preorder traversal value",root?.value ?? "")
            preorderTraversal(root: root?.leftChild)
            preorderTraversal(root: root?.rightChild)
        }
    }
    
    func postorderTraversal(root:BinaryTreeNode?){
        if (root != nil){
            postorderTraversal(root: root?.leftChild)
            postorderTraversal(root: root?.rightChild)
            print("Postorder traversal value",root?.value ?? "")
        }
    }
    
    func inOrderTraversal(root:BinaryTreeNode?){
        if (root != nil){
            inOrderTraversal(root: root?.leftChild)
            print("Inorder traversal value",root?.value ?? "")
            inOrderTraversal(root: root?.rightChild)
        }
    }
    
}
