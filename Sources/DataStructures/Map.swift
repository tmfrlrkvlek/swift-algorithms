//
//  Map.swift
//  Algorithms
//
//  Created by 이지수 on 2022/02/27.
//

import Foundation

public struct Map<T: Numerical> {
    private var distances: [[T]]
    
    init(_ N: Int, _ M: Int) {
        self.distances = Array<[T]>(repeating: Array<T>(repeating: T.max, count: M), count: N)
    }
    
    subscript(_ position: Coordinate) -> T {
        return self.distances[position.x][position.y]
    }
    
    mutating func change(to distance: T, at position: Coordinate) {
        self.distances[position.x][position.y] = distance
    }
}
