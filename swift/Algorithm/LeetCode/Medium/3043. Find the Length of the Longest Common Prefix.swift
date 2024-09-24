//
//  3043. Find the Length of the Longest Common Prefix.swift
//  https://leetcode.com/problems/find-the-length-of-the-longest-common-prefix/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/24.
//

final class LeetCode3043 {
  private final class TrieNode {
    var children: [Int: TrieNode] = [:]
  }

  func longestCommonPrefix(_ arr1: [Int], _ arr2: [Int]) -> Int {
    let root = TrieNode()

    // Build Trie with arr1
    for number in arr1 {
      insert(root, number: number)
    }

    var maxLength = 0
    for number in arr2 {
      maxLength = max(maxLength, search(root, number: number))
    }

    return maxLength
  }

  private func insert(_ root: TrieNode, number: Int) {
    var node = root
    for digit in String(number) {
      let intDigit = Int(String(digit))!
      if node.children[intDigit] == nil {
        node.children[intDigit] = TrieNode()
      }
      node = node.children[intDigit]!
    }
  }

  private func search(_ root: TrieNode, number: Int) -> Int {
    var node = root
    var length = 0
    for digit in String(number) {
      let intDigit = Int(String(digit))!
      if node.children[intDigit] == nil { break }
      node = node.children[intDigit]!
      length += 1
    }

    return length
  }
}
