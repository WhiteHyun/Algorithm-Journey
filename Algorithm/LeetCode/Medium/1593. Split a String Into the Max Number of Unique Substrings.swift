//
//  1593. Split a String Into the Max Number of Unique Substrings.swift
//  https://leetcode.com/problems/split-a-string-into-the-max-number-of-unique-substrings/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/21.
//

final class LeetCode1593 {
  func maxUniqueSplit(_ s: String) -> Int {
    var set: Set<String> = []
    let array = Array(s)

    func backTrack(_ index: Int, _ string: String) -> Int {
      if index == array.count {
        return set.count
      }

      let text = "\(string)\(array[index])"
      let combined: Int
      if !text.isEmpty, !set.contains(text) {
        set.insert(text)
        combined = backTrack(index + 1, "")
        set.remove(text)
      } else {
        combined = 0
      }

      let ignored = backTrack(index + 1, text)

      return max(combined, ignored)
    }

    return backTrack(0, "")
  }
}
