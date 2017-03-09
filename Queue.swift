//
//  Queue.swift
//  Algorithms
//
//  Created by Emil Gräs on 09/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import Foundation

struct Queue<Element> {
    fileprivate var array: [Element] = []
    
    // computed properties
    var isEmpty: Bool { return array.isEmpty }
    var count: Int { return array.count }
    
    // methods
    mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    
    mutating func dequeue() -> Element? {
        return array.removeFirst()
    }
    
    func peek() -> Element? {
        return array.first
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        let topDivider = "---Stack---\n"
        let bottomDivider = "\n-----------\n"
        let queueElements = array.map { "\($0)" }.joined(separator: "\n")
        return topDivider + queueElements + bottomDivider
    }
}
