//
//  2583. Kth Largest Sum in a Binary Tree.swift
//  https://leetcode.com/problems/kth-largest-sum-in-a-binary-tree/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/22.
//

final class LeetCode2583 {
  func kthLargestLevelSum(_ root: TreeNode?, _ k: Int) -> Int {
    var values: [Int] = []

    let queue: Queue<TreeNode> = [root!]

    while queue.isEmpty == false {
      let count = queue.count
      var sum = 0
      for _ in 0 ..< count {
        let node = queue.dequeue()!
        sum += node.val
        if let leftNode = node.left {
          queue.enqueue(leftNode)
        }
        if let rightNode = node.right {
          queue.enqueue(rightNode)
        }
      }
      values.append(sum)
    }

    if values.count < k { return -1 }
    return values.sorted(by: >)[k - 1]
  }
}
