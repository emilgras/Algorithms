//
//  InsertionSort.swift
//  Algorithms
//
//  Created by Emil Gräs on 09/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import Foundation

class InsertionSort {
    
    func insertionSort(_ array: [Int]) -> [Int] {
        var a = array
        for x in 1..<a.count {
            var y = x
            let temp = a[y]
            while y > 0 && temp < a[y - 1] {
                a[y] = a[y - 1]
                y -= 1
            }
            a[y] = temp
        }
        return a
    }
    
}
