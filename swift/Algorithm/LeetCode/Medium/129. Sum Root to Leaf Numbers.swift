//
//  129. Sum Root to Leaf Numbers
//  https://leetcode.com/problems/sum-root-to-leaf-numbers/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/15.
//

import Foundation

/// Definition for a binary tree node.
/// public class TreeNode {
///     public var val: Int
///     public var left: TreeNode?
///     public var right: TreeNode?
///     public init() { self.val = 0; self.left = nil; self.right = nil; }
///     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
///     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
///         self.val = val
///         self.left = left
///         self.right = right
///     }
/// }
class LeetCodeSolution129 {
  func sumNumbers(_ node: TreeNode?, _ sum: Int = 0) -> Int {
    let sum = sum * 10 + node!.val

    if node?.left != nil, node?.right != nil {
      return sumNumbers(node?.left, sum) + sumNumbers(node?.right, sum)
    } else if node?.left != nil {
      return sumNumbers(node?.left, sum)
    } else if node?.right != nil {
      return sumNumbers(node?.right, sum)
    }
    return sum
  }
}
