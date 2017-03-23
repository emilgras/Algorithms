//
//  ViewController.swift
//  Algorithms
//
//  Created by Emil Gräs on 09/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        binaryTree()
    }
    
    fileprivate func dictionaryExample() {
        var dictionary = Dictionary<String, String>(capacity: 5)
        dictionary["firstName"] = "Steve"   // insert
        _ = dictionary["firstName"]     // lookup
        dictionary["firstName"] = "Tim"     // update
        dictionary["firstName"] = nil       // delete
    }
    
    fileprivate func stackExample() {
        var stack = Stack<String>()
        stack.push("Hello World!")
        stack.push("What a nice stack.")
        print("----- STACK -----")
        print("desc: \(stack.description)")
        print("count: \(stack.count)")
        print("is empty: \(stack.isEmpty)")
        print("peek: \(stack.peek())")
        print("pop: \(stack.pop())")
        print("pop: \(stack.pop())")
        print("pop: \(stack.pop())")
        print("is empty: \(stack.isEmpty)")
        print("-----------------")
        print("\n")
    }
    
    fileprivate func treeExample() {
        let beverages = TreeNode(value: "beverages")
        let hotBeverages = TreeNode(value: "hot")
        let coldBeverages = TreeNode(value: "cold")
        let cocacola = TreeNode(value: "coca cola")
        beverages.addChild(child: hotBeverages)
        beverages.addChild(child: coldBeverages)
        coldBeverages.addChild(child: cocacola)
        print("----- TREE -----")
        print("Tree: {\(beverages)}")
        print("-----------------")
        print("\n")
    }
    
    fileprivate func binaryTree() {
        // leaf nodes
        let node5 = BinaryTree.node(.empty, "5", .empty)
        let nodeA = BinaryTree.node(.empty, "a", .empty)
        let node10 = BinaryTree.node(.empty, "10", .empty)
        let node4 = BinaryTree.node(.empty, "4", .empty)
        let node3 = BinaryTree.node(.empty, "3", .empty)
        let nodeB = BinaryTree.node(.empty, "b", .empty)
        
        // intermediate nodes on the left
        let Aminus10 = BinaryTree.node(nodeA, "-", node10)
        let timesLeft = BinaryTree.node(node5, "*", Aminus10)
        
        // intermediate nodes on the right
        let minus4 = BinaryTree.node(.empty, "-", node4)
        let divide3andB = BinaryTree.node(node3, "/", nodeB)
        let timesRight = BinaryTree.node(minus4, "*", divide3andB)
        
        // root node
        let tree = BinaryTree.node(timesLeft, "+", timesRight)
        print("----- BINARY SEARCH TREE -----")
        print(tree)
        print("-----------------")
        print("\n")
    }
    
    fileprivate func queueExample() {
        var queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        print("----- QUEUE -----")
        print("desc: \(queue.description)")
        print("count: \(queue.count)")
        print("isEmpty: \(queue.isEmpty)")
        print("dequeue: \(queue.dequeue())")
        print("desc: \(queue.description)")
        print("dequeue: \(queue.dequeue())")
        print("dequeue: \(queue.dequeue())")
        print("dequeue: \(queue.dequeue())")
        print("count: \(queue.count)")
        print("isEmpty: \(queue.isEmpty)")
        print("-----------------")
        print("\n")
    }
    
    fileprivate func linkedListExample() {
        let dogBreeds = LinkedList<String>()
        dogBreeds.append(value: "Labrador")
        dogBreeds.append(value: "Bulldog")
        dogBreeds.append(value: "Beagle")
        dogBreeds.append(value: "Husky")
        print("\(dogBreeds.remove(atIndex: 2))")
        print("\(dogBreeds.isEmpty)")
        print("----- QUEUE -----")
        print(dogBreeds)
        print("-----------------")
        print("\n")
    }
    
    fileprivate func mergeSortExample() {
        var randomNumbersArray: [Int] = []
        let max = 1000
        for _ in 0..<max {
            randomNumbersArray.append(Int(arc4random_uniform(UInt32(max))))
        }
        let mergeSort = MergeSort()
        let sortedArray: [Int] = mergeSort.mergeSort(randomNumbersArray)
        print(sortedArray)
    }

}


