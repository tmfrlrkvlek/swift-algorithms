//
//  Permutations.swift
//  Algorithms
//
//  Created by 이지수 on 2022/02/27.
//

import Foundation

/**
 ## Reference
 - [apple/swift-algorithms](https://github.com/apple/swift-algorithms)
 **/

public extension Array {
    func permutations(_ elements: Self) -> [Self] {
        return self.permutations(elements, ofCount: elements.count)
    }
    
    func permutations(_ elements: Self, ofCount N: Int) -> [Self] {
        guard 0...elements.count ~= N else { return [] }
        
        var result = [Self]()
        var visited = [Bool](repeating: false, count: elements.count)
        
        func permute(_ now: Self) {
            if now.count == N {
                result.append(now)
                return
            }
            for i in 0..<elements.count where !visited[i] {
                visited[i] = true
                permute(now+[elements[i]])
                visited[i] = false
            }
        }
        
        permute([])
        return result
    }
}
