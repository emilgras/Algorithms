//
//  Node.swift
//  Algorithms
//
//  Created by Emil Gräs on 23/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import Foundation

class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    var parent: TreeNode?
    
    init(value: T) {
        self.value = value
    }
    
    func addChild(child: TreeNode) {
        children.append(child)
        child.parent = self
    }
}

extension TreeNode: CustomStringConvertible {
    var description: String {
        var text = "\(value)"
        if !children.isEmpty {
            text += " {\(children.map { $0.description }.joined(separator: ", "))}"
        }
        return text
    }
}

extension TreeNode where T: Equatable {
    func search(value: T) -> TreeNode? {
        if value == self.value {
            return self
        }
        for child in children {
            if let found = child.search(value: value) {
                return found
            }
        }
        return nil
    }
}
