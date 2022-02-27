//
//  Node.swift
//  Algorithms
//
//  Created by 이지수 on 2022/02/27.
//

import Foundation

public struct Node<T: Comparable, U: Equatable>: Comparable {
    var element: T
    var position: U
    public static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.element < rhs.element
    }
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.element == rhs.element && lhs.position == rhs.position
    }
}
