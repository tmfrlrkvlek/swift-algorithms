//
//  Dijkstra.swift
//  Algorithms
//
//  Created by 이지수 on 2022/02/27.
//

import Foundation

public func dijkstra<T: Numerical>(_ N: Int, s: Coordinate, graph: Map<T>, isEightDirection: Bool = false) -> Map<T> {
    var queue = MinHeap<Node>(elements: [Node(element: graph[s], position: s)])
    var distances = Map<T>(N, N)
    while queue.count > 0 {
        let c = queue.pop()
        let currentDistance = c.element
        let currentPosition = c.position
        guard distances[currentPosition] >= currentDistance else { continue }
        for nextPosition in isEightDirection ? currentPosition.movable8Location(N) : currentPosition.movable4Location(N) {
            let distance = currentDistance + graph[nextPosition]
            if distance < distances[nextPosition] {
                distances.change(to: distance, at: nextPosition)
                queue.insert(Node(element: distance, position: nextPosition))
            }
        }
    }
    return distances
}
