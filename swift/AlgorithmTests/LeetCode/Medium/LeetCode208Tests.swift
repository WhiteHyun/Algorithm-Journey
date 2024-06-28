//
//  LeetCode208Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/28.
//

import Testing

@Suite(
  "208. Implement Trie (Prefix Tree)",
  .tags(.design, .string, .hashTable, .trie)
)
struct LeetCode208Tests {
  private let trie: Trie

  init() {
    trie = Trie()
  }

  @Test
  func example1() {
    trie.insert("apple")
    #expect(trie.search("apple") == true)
    #expect(trie.search("app") == false)
    #expect(trie.startsWith("app") == true)

    trie.insert("app")
    #expect(trie.search("app") == true)
  }
}
