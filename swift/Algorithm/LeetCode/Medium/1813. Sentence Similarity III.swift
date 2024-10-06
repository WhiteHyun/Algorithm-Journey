//
//  1813. Sentence Similarity III.swift
//  https://leetcode.com/problems/sentence-similarity-iii/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/10/06.
//

final class LeetCode1813 {
  func areSentencesSimilar(_ sentence1: String, _ sentence2: String) -> Bool {
    let shortestWords = (sentence1.count < sentence2.count ? sentence1 : sentence2).components(separatedBy: .whitespaces)
    let longestWords = (sentence1.count < sentence2.count ? sentence2 : sentence1).components(separatedBy: .whitespaces)
    if shortestWords.count == 1 {
      return longestWords.first == shortestWords.first || longestWords.last == shortestWords.last
    }
    var start = 0
    var end = 0

    let n1 = longestWords.count
    let n2 = shortestWords.count

    while start < n2 && longestWords[start] == shortestWords[start] {
      start += 1
    }

    while end < n2 && longestWords[n1 - 1 - end] == shortestWords[n2 - 1 - end] {
      end += 1
    }

    return start + end >= n2
  }
}
