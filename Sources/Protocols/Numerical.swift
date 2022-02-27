//
//  Numerical.swift
//  Algorithms
//
//  Created by 이지수 on 2022/02/27.
//

import Foundation

public protocol Numerical: Comparable {
    static var zero: Self { get }
    static var min: Self { get }
    static var max: Self { get }
    
    static func + (lhs: Self, rhs: Self) -> Self
}
