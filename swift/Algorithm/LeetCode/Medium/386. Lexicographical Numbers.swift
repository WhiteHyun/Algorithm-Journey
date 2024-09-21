//
//  386. Lexicographical Numbers.swift
//  https://leetcode.com/problems/lexicographical-numbers/description/
//  Algorithm
//
//  Created by 홍승현 on 2024/09/21.
//

final class LeetCode386 {
  func lexicalOrder(_ n: Int) -> [Int] {
    Array(1 ... n).map(String.init).sorted().compactMap(Int.init)
  }
}
