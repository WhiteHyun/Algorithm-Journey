//
//  2000. Reverse Prefix of Word.swift
//  https://leetcode.com/problems/reverse-prefix-of-word/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/05/01.
//

import Foundation

final class LeetCode2000 {
  func reversePrefix(_ word: String, _ ch: Character) -> String {
    guard let index = word.firstIndex(of: ch)
    else {
      return word
    }

    return String(word[...index].reversed() + word[index...].dropFirst())
  }
}
