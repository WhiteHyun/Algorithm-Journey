//
//  230. Kth Smallest Element in a BST.swift
//  https://leetcode.com/problems/kth-smallest-element-in-a-bst/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/06/27.
//

final class LeetCode230 {
  private var triedCount: Int = 0
  func kthSmallest(_ node: TreeNode?, _ k: Int) -> Int {
    guard let node else { return -1 }
    let number = kthSmallest(node.left, k)
    if number != -1 { return number }
    if triedCount + 1 == k { return node.val }
    triedCount += 1
    return kthSmallest(node.right, k)
  }
}
