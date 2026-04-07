//
//  6549. Largest rectangle in a histogram.swift
//  https://www.acmicpc.net/problem/6549
//  Algorithm
//
//  Created by 홍승현 on 2024/08/05.
//

final class BOJ6549 {
  struct Element {
    let index: Int
    let height: Int
  }

  func largestRectangleArea(_ heights: [Int]) -> Int {
    var maxArea = 0

    var stack: [Element] = []

    for (index, height) in heights.enumerated() {
      var start = index

      while !stack.isEmpty, stack.last!.height > height {
        let lastElement = stack.popLast()!
        start = lastElement.index
        maxArea = max(maxArea, lastElement.height * (index - lastElement.index))
      }

      stack.append(.init(index: start, height: height))
    }

    for element in stack {
      maxArea = max(maxArea, element.height * (heights.count - element.index))
    }

    return maxArea
  }
}
