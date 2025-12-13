//
//  857. Minimum Cost to Hire K Workers.swift
//  https://leetcode.com/problems/minimum-cost-to-hire-k-workers/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/11.
//

// MARK: - LeetCode857

final class LeetCode857 {
  func mincostToHireWorkers(_ quality: [Int], _ wage: [Int], _ k: Int) -> Double {
    let workers = zip(wage, quality).map { (Double($0) / Double($1), $1) }.sorted { $0.0 < $1.0 }
    var res = Double.infinity
    var qsum = 0
    var heap = Heap<Int>(compareClosure: >)

    for (r, q) in workers {
      heap.insert(q)
      qsum += q
      if heap.count > k {
        let maxQ = heap.remove()!
        qsum -= maxQ
      }
      if heap.count == k {
        res = min(res, Double(qsum) * r)
      }
    }

    return res
  }
}
