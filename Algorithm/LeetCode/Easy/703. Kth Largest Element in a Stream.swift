//
//  703. Kth Largest Element in a Stream.swift
//  https://leetcode.com/problems/kth-largest-element-in-a-stream/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/08/12.
//

enum LeetCode703 {
  final class KthLargest {
    private var nums: [Int]
    private let k: Int
    init(_ k: Int, _ nums: [Int]) {
      self.k = k
      self.nums = nums.sorted(by: >)
    }

    func add(_ val: Int) -> Int {
      nums.append(val)
      nums.sort(by: >)
      return nums[k - 1]
    }
  }
}
