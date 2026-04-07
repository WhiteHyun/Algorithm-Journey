//
//  2530. Maximal Score After Applying K Operations.swift
//  https://leetcode.com/problems/maximal-score-after-applying-k-operations/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/14.
//

final class LeetCode2530 {
  func maxKelements(_ nums: [Int], _ k: Int) -> Int {
    var heap: Heap<Int> = .init(compareClosure: >)
    for num in nums {
      heap.insert(num)
    }

    var sum = 0

    for _ in 0 ..< k {
      if let element = heap.remove() {
        sum += element
        heap.insert((element + 2) / 3)
      }
    }

    return sum
  }
}
