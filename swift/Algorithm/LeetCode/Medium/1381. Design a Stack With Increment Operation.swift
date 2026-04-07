//
//  1381. Design a Stack With Increment Operation.swift
//  https://leetcode.com/problems/design-a-stack-with-increment-operation/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/30.
//

enum LeetCode1381 {
  class CustomStack {
    private let maxSize: Int
    private var array: [Int] = []

    init(_ maxSize: Int) {
      self.maxSize = maxSize
    }

    func push(_ x: Int) {
      if array.count == maxSize { return }
      array.append(x)
    }

    func pop() -> Int {
      array.popLast() ?? -1
    }

    func increment(_ k: Int, _ val: Int) {
      for i in 0 ..< min(k, array.count) {
        array[i] += val
      }
    }
  }
}
