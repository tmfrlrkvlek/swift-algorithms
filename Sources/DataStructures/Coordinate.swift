//
//  Coordinate.swift
//  Algorithms
//
//  Created by 이지수 on 2022/02/27.
//

import Foundation

public struct Coordinate: Equatable {
    let x: Int
    let y: Int
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    func movable4Location(_ N: Int) -> [Self] {
        return [Coordinate(x: self.x-1, y: self.y),
                Coordinate(x: self.x+1, y: self.y),
                Coordinate(x: self.x, y: self.y-1),
                Coordinate(x: self.x, y: self.y+1)]
            .filter() { 0..<N ~= $0.x && 0..<N ~= $0.y }
    }
    
    func movable8Location(_ N: Int) -> [Self] {
        return [Coordinate(x: self.x-1, y: self.y),
                Coordinate(x: self.x+1, y: self.y),
                Coordinate(x: self.x, y: self.y-1),
                Coordinate(x: self.x, y: self.y+1),
                Coordinate(x: self.x-1, y: self.y-1),
                Coordinate(x: self.x+1, y: self.y+1),
                Coordinate(x: self.x+1, y: self.y-1),
                Coordinate(x: self.x-1, y: self.y+1)]
            .filter() { 0..<N ~= $0.x && 0..<N ~= $0.y }
    }
}
