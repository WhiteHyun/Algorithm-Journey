//
//  2121. Find if Path Exists in Graph
//  https://leetcode.com/problems/find-if-path-exists-in-graph/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/21.
//

import Foundation

final class LeetCodeSolution2121 {
  private func parentVertex(array: [Int], vertex: Int) -> Int {
    if array[vertex] == vertex { return vertex }
    return parentVertex(array: array, vertex: array[vertex])
  }

  func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
    var array: [Int] = .init(0 ..< n)

    for edge in edges {
      let parentVertexA = parentVertex(array: array, vertex: edge[0])
      let parentVertexB = parentVertex(array: array, vertex: edge[1])
      if parentVertexA < parentVertexB {
        array[parentVertexB] = parentVertexA
      } else {
        array[parentVertexA] = parentVertexB
      }
    }

    return parentVertex(array: array, vertex: source) == parentVertex(array: array, vertex: destination)
  }
}
