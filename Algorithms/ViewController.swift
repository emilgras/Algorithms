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
        treeExample()
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


