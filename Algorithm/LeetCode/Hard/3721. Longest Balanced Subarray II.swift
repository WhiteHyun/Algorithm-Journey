//
//  3721. Longest Balanced Subarray II.swift
//  https://leetcode.com/problems/longest-balanced-subarray-ii/description/
//  Algorithm
//
//  Created by 홍승현 on 2026/02/11.
//

final class LeetCode3721 {
  func longestBalanced(_ nums: [Int]) -> Int {
    let n = nums.count
    let treeSize = (n + 1) * 4
    var minValue = [Int](repeating: 0, count: treeSize)
    var maxValue = [Int](repeating: 0, count: treeSize)
    var pending = [Int](repeating: 0, count: treeSize)

    func applyLazy(_ node: Int, _ delta: Int) {
      minValue[node] += delta
      maxValue[node] += delta
      pending[node] += delta
    }

    func pushDown(_ node: Int) {
      if pending[node] != 0 {
        applyLazy(node << 1, pending[node])
        applyLazy(node << 1 | 1, pending[node])
        pending[node] = 0
      }
    }

    func pushUp(_ node: Int) {
      minValue[node] = min(minValue[node << 1], minValue[node << 1 | 1])
      maxValue[node] = max(maxValue[node << 1], maxValue[node << 1 | 1])
    }

    func rangeAdd(_ node: Int, _ nodeLeft: Int, _ nodeRight: Int, _ queryLeft: Int, _ queryRight: Int, _ delta: Int) {
      if queryLeft <= nodeLeft, nodeRight <= queryRight {
        applyLazy(node, delta)
        return
      }
      pushDown(node)
      let mid = (nodeLeft + nodeRight) >> 1
      if queryLeft <= mid { rangeAdd(node << 1, nodeLeft, mid, queryLeft, queryRight, delta) }
      if queryRight > mid { rangeAdd(node << 1 | 1, mid + 1, nodeRight, queryLeft, queryRight, delta) }
      pushUp(node)
    }

    func findEarliestIndex(_ node: Int, _ nodeLeft: Int, _ nodeRight: Int, _ target: Int) -> Int {
      if nodeLeft == nodeRight { return nodeLeft }
      pushDown(node)
      let mid = (nodeLeft + nodeRight) >> 1
      if minValue[node << 1] <= target, target <= maxValue[node << 1] {
        return findEarliestIndex(node << 1, nodeLeft, mid, target)
      }
      return findEarliestIndex(node << 1 | 1, mid + 1, nodeRight, target)
    }

    var lastOccurrence = [Int](repeating: 0, count: 100_001)
    var balance = 0
    var result = 0

    for i in 1 ... n {
      let value = nums[i - 1]
      let contribution = value & 1 == 1 ? 1 : -1

      if lastOccurrence[value] != 0 {
        rangeAdd(1, 0, n, lastOccurrence[value], n, -contribution)
        balance -= contribution
      }
      lastOccurrence[value] = i
      rangeAdd(1, 0, n, i, n, contribution)
      balance += contribution

      let earliestMatch = findEarliestIndex(1, 0, n, balance)
      result = max(result, i - earliestMatch)
    }

    return result
  }
}
