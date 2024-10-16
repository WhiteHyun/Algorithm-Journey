//
//  1405. Longest Happy String.swift
//  https://leetcode.com/problems/longest-happy-string/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/16.
//

final class LeetCode1405 {
  func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
    var maxHeap: Heap<(char: Character, count: Int)> = .init { $0.count > $1.count }
    var result = ""

    if a > 0 { maxHeap.insert(("a", a)) }
    if b > 0 { maxHeap.insert(("b", b)) }
    if c > 0 { maxHeap.insert(("c", c)) }

    while let (char, count) = maxHeap.remove() {
      if result.count >= 2, result.suffix(2) == "\(char)\(char)" {
        if maxHeap.isEmpty { break }
        let (nextChar, nextCount) = maxHeap.remove()!
        result.append(nextChar)
        if nextCount > 1 {
          maxHeap.insert((nextChar, nextCount - 1))
        }
        maxHeap.insert((char, count))
      } else {
        result.append(char)
        if count > 1 {
          maxHeap.insert((char, count - 1))
        }
      }
    }

    return result
  }
}
