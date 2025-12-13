//
//  LeetCode211Tests.swift
//  AlgorithmTests
//
//  Created by 홍승현 on 2024/06/28.
//

import Testing

@Suite(
  "211. Design Add and Search Words Data Structure",
  .tags(.string, .depthFirstSearch, .design, .trie)
)
struct LeetCode211Tests {
  private let dictionary = LeetCode211.WordDictionary()

  @Test
  func example1() {
    dictionary.addWord("bad")
    dictionary.addWord("dad")
    dictionary.addWord("mad")

    #expect(
      dictionary.search("pad") == false,
      #"Expected 'false', but got 'true'"#
    )

    #expect(
      dictionary.search("bad") == true,
      #"Expected 'true', but got 'false"#
    )

    #expect(
      dictionary.search(".ad") == true,
      #"Expected 'true', but got 'false"#
    )

    #expect(
      dictionary.search("b..") == true,
      #"Expected 'true', but got 'false"#
    )
  }

  @Test
  func example2() {
    dictionary.addWord("a")
    dictionary.addWord("a")

    #expect(
      dictionary.search(".") == true,
      #"Expected 'true', but got 'false'"#
    )

    #expect(
      dictionary.search("a") == true,
      #"Expected 'true', but got 'false"#
    )

    #expect(
      dictionary.search("aa") == false,
      #"Expected 'false', but got 'true"#
    )

    #expect(
      dictionary.search("a") == true,
      #"Expected 'true', but got 'false"#
    )

    #expect(
      dictionary.search(".a") == false,
      #"Expected 'false', but got 'true"#
    )

    #expect(
      dictionary.search("a.") == false,
      #"Expected 'false', but got 'true"#
    )
  }

  @Test
  func example3() {
    dictionary.addWord("at")
    dictionary.addWord("and")
    dictionary.addWord("an")
    dictionary.addWord("add")

    #expect(dictionary.search("a") == false)
    #expect(dictionary.search(".at") == false)

    dictionary.addWord("bat")

    #expect(dictionary.search(".at") == true)
    #expect(dictionary.search("an.") == true)
    #expect(dictionary.search("a.d.") == false)
    #expect(dictionary.search("b.") == false)
    #expect(dictionary.search("a.d") == true)
    #expect(dictionary.search(".") == false)
  }
}
