//
//  1030. Smallest String Starting From Leaf
//  https://leetcode.com/problems/smallest-string-starting-from-leaf/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/04/17.
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
final class LeetCodeSolution1030 {
  func smallestFromLeaf(_ node: TreeNode?) -> String {
    let array = recursion(node: node!, string: "").map { String($0.reversed()) }.sorted()
    return array.first!
  }

  private func recursion(node: TreeNode, string: String) -> [String] {
    let string = "\(string)\(Character(UnicodeScalar(node.val + 97)!))"

    if let left = node.left,
       let right = node.right {
      return recursion(node: left, string: string) + recursion(node: right, string: string)
    } else if let left = node.left {
      return recursion(node: left, string: string)
    } else if let right = node.right {
      return recursion(node: right, string: string)
    }
    return [string]
  }
}
