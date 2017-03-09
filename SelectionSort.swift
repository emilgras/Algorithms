//
//  SelectionSort.swift
//  Algorithms
//
//  Created by Emil Gräs on 09/03/2017.
//  Copyright © 2017 Emil Gräs. All rights reserved.
//

import Foundation

class SelectionSort {
    
    func selectionSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        
        var a = array
        
        for x in 0 ..< a.count - 1 {
            
            var lowest = x
            for y in x + 1 ..< a.count {
                if a[y] < a[lowest] {
                    lowest = y
                }
            }
            
            if x != lowest {
                swap(&a[x], &a[lowest])
            }
        }
        return a
    }
    
}
