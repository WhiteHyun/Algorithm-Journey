//
//  LeetCode514Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/04/27.
//

import Testing

@Suite("LeetCode514")
struct LeetCode514Tests {
  private let problem = LeetCode514()

  @Test(arguments: [
    ("godding", "gd", 4),
    ("godding", "godding", 13),
    ("iotfo", "fioot", 11),
    ("abccbaxbe", "abx", 6),
    ("xrrakuulnczywjs", "jrlucwzakzussrlckyjjsuwkuarnaluxnyzcnrxxwruyr", 204)
  ])
  func examples(ring: String, key: String, expected: Int) {
    let result = problem.findRotateSteps(ring, key)
    #expect(result == expected, "Input: ring=\(ring), key=\(key), Expected: \(expected), Got: \(result)")
  }
}
