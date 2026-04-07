//
//  1545. Find Kth Bit in Nth Binary String.swift
//  https://leetcode.com/problems/find-kth-bit-in-nth-binary-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/20.
//

final class LeetCode1545 {
  func findKthBit(_ n: Int, _ k: Int) -> Character {
    var result = "0"

    for _ in 0 ..< n - 1 {
      result = "\(result)1\(reverse(invert(result)))"
    }

    return result[k - 1]
  }

  func invert(_ string: String) -> String {
    var result = ""
    for character in string {
      result.append(character == "0" ? "1" : "0")
    }
    return result
  }

  func reverse(_ string: String) -> String {
    String(string.reversed())
  }
}
