//
//  2326. Spiral Matrix IV.swift
//  https://leetcode.com/problems/spiral-matrix-iv/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/09.
//

final class LeetCode2326 {
  func spiralMatrix(_ m: Int, _ n: Int, _ head: ListNode?) -> [[Int]] {
    var array: [[Int]] = .init(repeating: .init(repeating: -1, count: n), count: m)
    var i = 0
    var j = 0
    var dIndex = 0
    let dir: [(dx: Int, dy: Int)] = [(0, 1), (1, 0), (0, -1), (-1, 0)]

    var targetNode = head
    while let node = targetNode {
      array[i][j] = node.val
      i += dir[dIndex].dx
      j += dir[dIndex].dy
      targetNode = node.next

      if 0 ..< m ~= i, 0 ..< n ~= j, array[i][j] == -1 {
        continue
      }

      i -= dir[dIndex].dx
      j -= dir[dIndex].dy
      dIndex = (dIndex + 1) % 4
      i += dir[dIndex].dx
      j += dir[dIndex].dy
    }

    return array
  }
}
